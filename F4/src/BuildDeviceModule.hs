{-# LANGUAGE LambdaCase #-}

module BuildDeviceModule where

import           CodeGenUtils
import qualified Data.List.Utils      as LU
import           FortranDSL
import           KernelCodeGen
import           Language.Fortran
import           LanguageFortranTools
import           MemoryAccessCodeGen
import           MiniPP
import           SmartCacheCodeGen
import           Utils

buildDeviceModule ::
     Int
  -> [(Int, PipelineStage)]
  -> IO (String, ProgUnit Anno, [KernelCallingData])
buildDeviceModule numPipelines pipelineStages = do
  putStrLn $ rule '-' ++ " Pipe Init Sub " ++ rule '-'
  putStrLn $ miniPPProgUnit deviceModule
  return (moduleName, deviceModule, callingData)
  where
    -- WV: removing the pipeInitSub is trivial
    -- WV: but pipeDecls would need to support the pragma comment
    -- deviceModule = fortranModule moduleName pipeDecls (pipeInitSub : kernels)
    deviceModule = fortranModule moduleName pipeDecls kernels
    kernels = concat kernelsSubLists
    callingData = concat kernelCallingDataPerKernel
    (kernelCallingDataPerKernel, kernelsSubLists) =
      unzip $ map generateStage pipelineStages
    allPipes =
      concatMap
        (\(_, (k, sm, ma)) ->
           writtenPipes k ++
           concatMap writtenPipes sm ++ concatMap writtenPipes ma)
        pipelineStages
    pipeInitSub = generatePipeInitSubRoutine allPipes
    pipeDecls = declNode $ map generatePipeDecl allPipes
    kernelsOnly = map (\(_, (k, _, _)) -> k) pipelineStages
    nameSplitIdx =
      if numPipelines > 1
        then 1
        else 0
    moduleName =
      LU.join
        "_"
        (LU.uniq $ map ((!! nameSplitIdx) . LU.split "_" . name) kernelsOnly) ++
      "_device_code"

pipeInitSubName = "pipe_initialisation"

generateStage :: (Int, PipelineStage) -> ([KernelCallingData], [ProgUnit Anno])
generateStage (pipelineNumber, (kernel, smartCache, memAccess)) =
  ( withPipelineNumberUpdated
  , memoryReaderKernels ++
    smartCacheKernel ++ [computeKernel] ++ memoryWriterKernels)
  where
    withPipelineNumberUpdated =
      map (updateKernelCallingData pipelineNumber) allKernelCallingData
    allKernelCallingData =
      memWriteKCD ++ memReadKCD ++ smartCacheCallingData ++ [kernelCallingData]
    (computeKernel, kernelCallingData) = generateKernelCode kernel
    (smartCacheKernel, smartCacheCallingData) =
      maybe
        ([], [])
        (\s ->
           let (sm, kcd) = generateSmartCache s
            in ([sm], [kcd]))
        smartCache
    (memoryReaderKernels, memReadKCD) =
      unzip $
      map generateMemoryReader $
      filter
        (\case
           MemoryReader {} -> True
           _ -> False)
        memAccess
    (memoryWriterKernels, memWriteKCD) =
      unzip $
      map generateMemoryWriter $
      filter
        (\case
           MemoryWriter {} -> True
           _ -> False)
        memAccess

updateKernelCallingData pipelineNum kcd = kcd {pipelineNumber = pipelineNum}

-- generatePipeDecl :: Pipe -> Decl Anno
-- generatePipeDecl (Pipe _ _ pipeName _ _) = intDecl pipeName

generatePipeDecl :: Pipe -> Decl Anno
generatePipeDecl (Pipe _ _ pipeName streamValueType _) = 
  let
    pipe_ftype = case streamValueType of
      Float -> "real"
      Int -> "integer"
    pragma_str = "!$OCL pipe "++pipe_ftype
  in
      pipeDecl pipeName pragma_str



generatePipeInitSubRoutine :: [Pipe] -> ProgUnit Anno
generatePipeInitSubRoutine pipes = pipeInitSubroutine
  where
    pipeInitSubroutine =
      sub pipeInitSubName (NullDecl nullAnno nullSrcSpan) body []
    body = block $ map generatePipeInitCall pipes

generatePipeInitCall :: Pipe -> Fortran Anno
generatePipeInitCall (Pipe _ _ pipeName streamValueType _) =
  call (getCallName streamValueType) [pipeName]
  where
    getCallName streamValueType =
      case streamValueType of
        Float -> "ocl_pipe_real"
        _     -> "ocl_pipe_int"
