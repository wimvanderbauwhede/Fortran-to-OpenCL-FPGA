{
module Language.Fortran.Parser (
    parser
  , parse 				-- GAV ADDED
  , statement_parse		-- GAV ADDED
  , context_parse		-- GAV ADDED
  , include_parser
    -- * Helpers
  , fst3
  , snd3
  , trd3
  , fst4
  , snd4
  , trd4
  , frh4
  )
  where

import Language.Fortran
import Language.Fortran.PreProcess

import qualified Language.Haskell.Syntax as LH (SrcLoc(..))
import Language.Haskell.ParseMonad 
import Language.Fortran.Lexer
import Data.Char (toLower)
import Debug.Trace

import qualified Data.Map as DMap

}

%name parser executable_program
%name include_parser include_program
%partial statement_parser line -- GAV ADDED
%partial context_parser declaration_construct -- GAV ADDED
%tokentype { Token }

%monad { P } { >>= } { return }
%lexer { lexer } { TokEOF }

%token
 '=>'     { Arrow }
 '**'     { OpPower }
 '//'       { OpConcat }
 '=='           { OpEQ }
 '/='           { OpNE }
 '<='           { OpLE }
 '>='           { OpGE }
 '.NOT.'    { OpNOT }
 '.AND.'    { OpAND }
 '.OR.'           { OpOR }
 '.TRUE.'   { TrueConst }
 '.FALSE.'    { FalseConst }
-- '.EQV.'    { OpEQV }
-- '.NEGV.'           { OpNEQV }
 '<'            { OpLT }
 '>'            { OpGT }
 '*'            { OpMul }
 '/'            { OpDiv }
 '+'            { OpAdd }
 '-'            { OpSub }
 ','            { Comma }
 '('            { LParen }
 ')'            { RParen }
 '='            { OpEquals }
-- '\''           { SingleQuote }
-- '\"'     { DoubleQuote }
 '.'            { Period }
 '::'     { ColonColon }
 ':'      { Colon }
 ';'                    { SemiColon }
 '#'                    { Hash }
 '{'                    { LBrace }
 '}'                    { RBrace }
 '(/'                   { LArrCon }
 '/)'                   { RArrCon }
 DATA_DESC              { DataEditDest $$ }
--'b'                    { LitMark $$ }
--'B'                    { LitMark $$ }
--'z'                    { LitMark $$ }
--'Z'                    { LitMark $$ }
--'o'                    { LitMark $$ }
--'O'                    { LitMark $$ }
-- OBSOLETE '!'         { Bang } 
 '%'      { Percent }
 '$'      { Dollar }
 -- OBSOLETE '!{' { StopParamStart }
'\n'                    { NewLine }
 ALLOCATE     { Key "allocate" }
 ALLOCATABLE    { Key "allocatable" }
 ASSIGN     { Key "Assign" }
 ASSIGNMENT     { Key "assignment" }
-- AUTOMATIC    { Key "automatic" }
 BACKSPACE    { Key "backspace" }
 BLOCK      { Key "block" }
 CALL       { Key "call" }
 CASE     { Key "case" }
 CHARACTER    { Key "character" }
 CLOSE      { Key "close" }
 COMMON     { Key "common" }
 COMPLEX    { Key "complex" }
 CONTAINS     { Key "contains" }
 CONTINUE     { Key "continue" }
 CYCLE      { Key "cycle" }
 DATA       { Key "data" }
 DEALLOCATE     { Key "deallocate" }
 DEFAULT    { Key "default" }
 DIMENSION    { Key "dimension" }
 DO       { Key "do" }
-- DOUBLE     { Key "double" }
 ELEMENTAL    { Key "elemental" }
 ELSE       { Key "else" }
 ELSEIF     { Key "elseif" }
 ELSEWHERE    { Key "elsewhere" }
 END      { Key "end" }
 ENDIF      { Key "endif" }
 ENDDO      { Key "enddo" }
-- END_DO     { Key "end do"}
 ENDFILE                { Key "endfile" }
-- ENTRY    { Key "entry" }
 EQUIVALENCE    { Key "equivalence" }
 EXIT       { Key "exit" }
 EXTERNAL     { Key "external" }
 FORALL     { Key "forall" }
 FOREACH    { Key "foreach" }
 FORMAT     { Key "format" }
 FUNCTION     { Key "function" }
 GOTO       { Key "goto" }
 IOLENGTH               { Key "iolength" }
 IF       { Key "if" }
 IMPLICIT     { Key "implicit" }
 IN       { Key "in" }
 INCLUDE    { Key "include" }
 INOUT      { Key "inout" }
 INTEGER    { Key "integer" }
 INTENT     { Key "intent" }
 INTERFACE    { Key "interface" }
 INTRINSIC    { Key "intrinsic" }
 INQUIRE    { Key "inquire" }
 KIND       { Key "kind" }
 LEN      { Key "len" }
 LOGICAL    { Key "logical" }
 MODULE     { Key "module" }
 NAMELIST     { Key "namelist" }
 NONE       { Key "none" }
 NULLIFY    { Key "nullify" }
 NULL       { Key "null" }
-- ONLY     { Key "only" }
 OPEN       { Key "open" }
 OPERATOR     { Key "operator" }
 OPTIONAL     { Key "optional" }
 OUT      { Key "out" }
 PARAMETER    { Key "parameter" }
 PAUSE            { Key "pause" }
 POINTER    { Key "pointer" }
-- PRECISION    { Key "precision" }
 PRINT      { Key "print" }
 PRIVATE    { Key "private" }
 PROCEDURE    { Key "procedure" }
 PROGRAM    { Key "program" }
 PURE       { Key "pure" }
 PUBLIC     { Key "public" }
 REAL       { Key "real" }
 READ       { Key "read" }
 RECURSIVE    { Key "recursive" }
 RESULT     { Key "result" }
 RETURN     { Key "return" }
 REWIND     { Key "rewind" }
 SAVE       { Key "save" }
 SELECT     { Key "select" }
 SEQUENCE     { Key "sequence" }
-- SIZE     { Key "size" }
 SOMETYPE               { Key "sometype" }
 SQRT     { Key "sqrt" }
 STAT       { Key "stat" }
 STOP     { Key "stop" }
 STR                    { StrConst $$ }
 ZLIT                   { LitConst 'z' $$ }
 SUBROUTINE     { Key "subroutine" }
 TARGET     { Key "target" }
-- TO       { Key "to" }
 THEN       { Key "then" }
 TYPE       { Key "type" }
-- UNFORMATED     { Key "unformatted" }
 UNIT                   { Key "unit" } -- units-of-measure extension
 '1'                    { Num "1" }    -- units-of-measure extension
 USE      { Key "use" }
 VOLATILE     { Key "volatile" }
 WHILE      { Key "while" }
 WHERE      { Key "where" }
 WRITE      { Key "write" }
 ID                     { ID $$ }
 NUM                    { Num $$ }
 LABEL                  { Num $$ }
 TEXT                   { Text $$ }
%%

include_program :: { Program A0 }
include_program 
: srcloc newline specification_part_top {% do { s <- getSrcSpan $1; 
                                                return [IncludeProg DMap.empty s $3 Nothing] }}

executable_program :: { Program A0 }
executable_program
  : program_unit_list                             { $1 }
    
program_unit_list :: { Program A0 }
program_unit_list
  : program_unit_list newline0 program_unit       { $1++[$3] }
  | {- empty -}                                   { [] }

program_unit :: { ProgUnit A0 }
program_unit
  : main_program                                  { $1 }
  | external_subprogram                           { $1 }
  | module                                        { $1 }
  | block_data                                    { $1 }

plist :: { [String] }
plist 
  : plist ',' id2                                 { $1++[$3] }
  | id2                                           { [$1] }

vlist :: { [Expr A0] }
vlist 
  : variable ',' vlist                            { $1:$3 }
  | variable                                      { [$1] }

newline :: {}
newline : '\n' newline0 {} 
-- | ';' newline0 {}

newline0 :: {}
newline0 : newline  {} 
        | {- empty -} {}

main_program :: { ProgUnit A0 }
main_program
  : srcloc program_stmt srcloc use_stmt_list implicit_part srcloc specification_part_top execution_part module_subprogram_part end_program_stmt newline0
                {% do { s <- getSrcSpan $1;
            s' <- getSrcSpan $6;
            name <- cmpNames (fst $2) $10 "program";
            return (Main DMap.empty s name (snd $2) (Block DMap.empty (UseBlock $4 $3) $5 s' $7 $8) $9); } }



program_stmt :: { (SubName A0, Arg A0) }
program_stmt
  : PROGRAM subname args_p newline   { ($2, $3) }
  | PROGRAM subname srcloc newline   { ($2, (Arg DMap.empty (NullArg DMap.empty)) ($3, $3)) } 

end_program_stmt :: { String }
end_program_stmt
  : END PROGRAM id2   { $3 }
  | END PROGRAM       { "" }
  | END               { "" }

implicit_part :: { Implicit A0 }
implicit_part
  : IMPLICIT NONE newline   { ImplicitNone DMap.empty }
  | {- empty -}             { ImplicitNull DMap.empty }

external_subprogram :: { ProgUnit A0}
external_subprogram
  : function_subprogram           { $1 }
  | subroutine_subprogram         { $1 } 

subroutine_subprogram :: { ProgUnit A0 }
subroutine_subprogram 
  : srcloc subroutine_stmt srcloc use_stmt_list implicit_part srcloc specification_part_top execution_part end_subroutine_stmt newline0
  {% do { s <- getSrcSpan $1;
          s' <- getSrcSpan $6;
          name <- cmpNames (fst3 $2) $9 "subroutine";
          return (Sub DMap.empty s (trd3 $2) name (snd3 $2) (Block DMap.empty (UseBlock $4 $3) $5 s' $7 $8)); } }

end_subroutine_stmt :: { String }
end_subroutine_stmt
  : END SUBROUTINE id2          { $3 }
  | END SUBROUTINE              { "" }
  | END                         { "" }

end_function_stmt :: { String }
end_function_stmt
  : END FUNCTION id2            { $3 }
  | END FUNCTION                { "" }
  | END                         { "" }

function_subprogram :: { ProgUnit A0 }
function_subprogram
: srcloc function_stmt srcloc use_stmt_list implicit_part srcloc specification_part_top execution_part end_function_stmt newline0  {% do { s <- getSrcSpan $1;
                       s' <- getSrcSpan $6;
                       name <- cmpNames (fst4 $2) $9 "function";
           return (Function DMap.empty s (trd4 $2) name (snd4 $2) (frh4 $2) (Block DMap.empty (UseBlock $4 $3) $5 s' $7 $8)); } }

block_data :: { ProgUnit A0 }
block_data
  : srcloc block_data_stmt use_stmt_list implicit_part specification_part_top end_block_data_stmt     
                  {% do { s <- getSrcSpan $1;
                          name <- cmpNames $2 $6 "block data";
                          return (BlockData DMap.empty s name $3 $4 $5); } }
  
block_data_stmt :: { SubName A0 }
block_data_stmt
 : BLOCK DATA subname                     { $3 } 
 | BLOCK DATA                             { "foobar" `trace` NullSubName DMap.empty } 

end_block_data_stmt :: { String }
end_block_data_stmt
  : END BLOCK DATA id2                     { $4 }
  | END BLOCK DATA                         { "" }
  | END                                    { "" }
  
module :: { ProgUnit A0 }
module
   : srcloc module_stmt use_stmt_list implicit_part specification_part_top module_subprogram_part end_module_stmt newline0
         {%  do { s <- getSrcSpan $1;
                  name <- cmpNames $2 $7  "module";
      return (Module DMap.empty s name $3 $4 $5 $6); } }

module_stmt :: { SubName A0 }
module_stmt
  : MODULE subname newline                    { $2 } 

end_module_stmt :: { String }
end_module_stmt
  : END MODULE id2                            { $3 }
  | END MODULE                                { "" }
  | END                                       { "" }

module_subprogram_part :: { Program A0 }
module_subprogram_part
  : CONTAINS newline internal_subprogram_list { $3 }
| {- empty -}                                 { [] } 
  
internal_subprogram_list :: { Program A0 }
internal_subprogram_list
  : internal_subprogram_list internal_subprogram newline0 { $1++[$2] } 
  | {- empty -}                                           { [] }
  
internal_subprogram :: { ProgUnit A0 }
internal_subprogram
  : subroutine_subprogram                           { $1 }
  | function_subprogram                             { $1 }
  
use_stmt_list :: { Uses A0 }
use_stmt_list
: use_stmt use_stmt_list  { Use DMap.empty $1 $2 DMap.empty }
| {- empty -}     { UseNil DMap.empty }

use_stmt :: { (String, Renames) }
use_stmt
: USE id2 newline { ($2, []) }
| USE COMMON ',' renames newline { ("common", $4) } -- Since "common" is a valid module name
| USE id2 ',' renames newline { ($2, $4) }

renames :: { [(Variable, Variable)] }
:  id2 '=>' id2        { [($1, $3)] }
 | renames ',' renames { $1 ++ $3 }
 
  
-- [DO: Allows the specification part of a module to be empty]
specification_part_top :: { Decl A0 }
specification_part_top
   : specification_part   { $1 }
   | {- empty -}          {% getSrcSpanNull >>= (\s -> return $ NullDecl DMap.empty s)}

specification_part :: { Decl A0 }
specification_part
  : declaration_construct_l specification_part { DSeq DMap.empty $1 $2 }
  | declaration_construct_l                    { $1 }
  

declaration_construct_l :: { Decl A0 }
declaration_construct_l
  : declaration_construct_p newline { $1 }

declaration_construct_p :: { Decl A0 }
declaration_construct_p
  : declaration_construct                         { $1 }
  | specification_stmt                            { $1 }
  | derived_type_def                              { $1 }
  | TEXT            { TextDecl DMap.empty $1 }

-- Not sure about the ArrayT outputs here, think this may be a bug

declaration_construct :: { Decl A0 }
declaration_construct
  : srcloc type_spec_p attr_spec_list '::' entity_decl_list  
  {% (getSrcSpan $1) >>= (\s -> return $ if null (fst $3) 
           then Decl DMap.empty s $5 ((BaseType DMap.empty (fst3 $2) (snd $3) (snd3 $2) (trd3 $2)))
                       else Decl DMap.empty s $5 ((ArrayT DMap.empty  (fst $3) (fst3 $2) (snd $3) (snd3 $2) (trd3 $2)))) }
  | srcloc type_spec_p attr_spec_list entity_decl_list  
  {% (getSrcSpan $1) >>= (\s -> return $ if null (fst $3) 
               then Decl DMap.empty s $4 ((BaseType DMap.empty (fst3 $2) (snd $3) (snd3 $2) (trd3 $2)))
                         else Decl DMap.empty s $4 ((ArrayT DMap.empty (fst $3) (fst3 $2) (snd $3) (snd3 $2) (trd3 $2)))) }
  | interface_block             { $1 }
  | include_stmt { $1 }


attr_spec_list :: {([(Expr A0, Expr A0)],[Attr A0])}
attr_spec_list
  : attr_spec_list ',' attr_spec                  { (fst $1++fst $3,snd $1++snd $3) }
  | {- empty -}                                   { ([],[]) }

entity_decl_list :: { [(Expr A0, Expr A0, Maybe Int, String)] }
entity_decl_list
: entity_decl ',' entity_decl_list         { $1:$3 }
| entity_decl                              { [$1] }

entity_decl :: { (Expr A0, Expr A0, Maybe Int, String) }
entity_decl
-- : srcloc ID '=' expr   {% getSrcSpan $1 >>= (\s -> return $ (Var DMap.empty s [(VarName DMap.empty $2,[])], $4, Nothing,"")) }
: variable '=' expr   { ($1, $3, Nothing,"") }
| variable             {% getSrcSpanNull >>= (\s -> return $ ($1, NullExpr DMap.empty s, Nothing,"")) }  
| variable '*' num     {% getSrcSpanNull >>= (\s -> return $ ($1, NullExpr DMap.empty s, Just $ read $3,"")) }  

-- | id2                  {% getSrcSpanNull >>= (\s -> return $ (Var DMap.empty s [(VarName DMap.empty $1,[])], NullExpr DMap.empty s, Nothing,"")) }  
 

object_name :: { String }
object_name
  : id2                                            { $1 }

type_spec_p :: { (BaseType A0, Expr A0, Expr A0) }
type_spec_p
  : type_spec                                     { (fst3 $1, snd3 $1, trd3 $1) }

type_spec :: { (BaseType A0, Expr A0, Expr A0) }
type_spec
: INTEGER kind_selector                         {% getSrcSpanNull >>= (\s -> return $ (Integer DMap.empty, $2, NullExpr DMap.empty s))  }
| INTEGER '*' length_value                      {% getSrcSpanNull >>= (\s -> return $  (Integer DMap.empty, $3, NullExpr DMap.empty s)) }
| INTEGER                                       {% getSrcSpanNull >>= (\s -> return $  (Integer DMap.empty, NullExpr DMap.empty s, NullExpr DMap.empty s)) }
| REAL kind_selector                            {% getSrcSpanNull >>= (\s -> return $  (Real DMap.empty, $2, NullExpr DMap.empty s)) }
| REAL '*' length_value                         {% getSrcSpanNull >>= (\s -> return $  (Real DMap.empty, $3, NullExpr DMap.empty s)) }
| REAL                                          {% getSrcSpanNull >>= (\s -> return $  (Real DMap.empty, NullExpr DMap.empty s, NullExpr DMap.empty s)) }
| SOMETYPE                                      {% getSrcSpanNull >>= (\s -> return $  (SomeType DMap.empty, NullExpr DMap.empty s, NullExpr DMap.empty s)) }
--  | DOUBLE PRECISION kind_selector                { (Double DMap.empty, $3, ne s)) }
--  | DOUBLE PRECISION '*' length_value             { (Double DMap.empty, $4, ne s)) }
--  | DOUBLE PRECISION                              { (Double DMap.empty, ne s, ne s)) }
| COMPLEX kind_selector                         {% getSrcSpanNull >>= (\s -> return $  (Complex DMap.empty, $2, NullExpr DMap.empty s)) }
| COMPLEX '*' length_value                      {% getSrcSpanNull >>= (\s -> return $  (Complex DMap.empty, $3, NullExpr DMap.empty s)) }
| COMPLEX                                       {% getSrcSpanNull >>= (\s -> return $  (Complex DMap.empty,NullExpr DMap.empty s, NullExpr DMap.empty s)) }
| CHARACTER char_selector                       { (Character DMap.empty, snd $2, fst $2) }
| CHARACTER '*' length_value                    {% getSrcSpanNull >>= (\s -> return $  (Character DMap.empty, $3, NullExpr DMap.empty s)) } 
| CHARACTER                                     {% getSrcSpanNull >>= (\s -> return $  (Character DMap.empty, NullExpr DMap.empty s, NullExpr DMap.empty s)) }
| LOGICAL kind_selector                         {% getSrcSpanNull >>= (\s -> return $  (Logical DMap.empty, $2, NullExpr DMap.empty s)) }
| LOGICAL '*' length_value                      {% getSrcSpanNull >>= (\s -> return $  (Logical DMap.empty, $3, NullExpr DMap.empty s)) }
| LOGICAL                                       {% getSrcSpanNull >>= (\s -> return $  (Logical DMap.empty, NullExpr DMap.empty s, NullExpr DMap.empty s)) }
| TYPE '(' type_name ')'                        {% getSrcSpanNull >>= (\s -> return $ (DerivedType DMap.empty $3, NullExpr DMap.empty s, NullExpr DMap.empty s)) }

--  | POINTER '(' pointer_name ',' pointee_name ['(' array_spec ')' ] ')'
--[',' '(' pointer_name ',' pointee_name ['(' array_spec ')' ] ')' ] 

kind_selector :: { Expr A0 }
  : '(' KIND '=' expr ')'                         { $4 }
  | '(' expr ')'                                  { $2 }

char_selector :: { (Expr A0, Expr A0) }  -- (LEN, KIND)
char_selector 
: length_selector                                         {% getSrcSpanNull >>= (\s -> return $ ($1,NullExpr DMap.empty s)) }
| '(' LEN '=' char_len_param_value ',' KIND '=' expr ')'  { ($4,$8) }
| '(' char_len_param_value ',' KIND '=' expr ')'          { ($2,$6) }
| '(' char_len_param_value ',' expr ')'                   {% getSrcSpanNull >>= (\s -> return $   ($2,NullExpr DMap.empty s)) }
| '(' KIND '=' expr ',' LEN '=' char_len_param_value ')'  { ($8,$4) }
| '(' KIND '=' expr ')'                                   {% getSrcSpanNull >>= (\s -> return $   (NullExpr DMap.empty s,$4)) }

length_selector :: { Expr A0 }
length_selector 
: '(' LEN '=' char_len_param_value ')'                    { $4 }
| '(' char_len_param_value ')'                            { $2 }

char_len_param_value :: { Expr A0 }
char_len_param_value
: specification_expr                                     { $1 }
| srcloc '*'                                             {% getSrcSpan $1 >>= (\s -> return $ Con DMap.empty s "*") }

length_value :: { Expr A0 }
length_value
: srcloc num                                           {% getSrcSpan $1 >>= (\s -> return $ Con DMap.empty s $2) }

dim_spec :: { [(Expr A0, Expr A0)] }
dim_spec
  : DIMENSION '(' array_spec ')' { $3 }
  | DIMENSION '(' ')'            { [] }  -- modified by Zhe on 11/14/2004

dim_spec_p :: { [(Expr A0, Expr A0)] }
dim_spec_p
  : DIMENSION array_spec { $2 }

attr_spec_p :: { ([(Expr A0, Expr A0)],[Attr A0]) }
attr_spec_p :
  PARAMETER                                      { ([],[Parameter DMap.empty]) }
| access_spec                                    { ([],[$1]) }
| ALLOCATABLE                                    { ([],[Allocatable DMap.empty]) }
| EXTERNAL                                       { ([],[External DMap.empty]) }
| INTENT '(' intent_spec ')'                     { ([],[Intent DMap.empty $3]) }
| INTRINSIC                                      { ([],[Intrinsic DMap.empty]) }
| OPTIONAL                                       { ([],[Optional DMap.empty]) }
| POINTER                                        { ([],[Pointer DMap.empty]) }
| SAVE                                           { ([],[Save DMap.empty]) }
| TARGET                                         { ([],[Target DMap.empty]) }
| UNIT '(' unit_spec ')'                         { ([],[MeasureUnit DMap.empty $3]) } -- units-of-measure
| VOLATILE                                       { ([],[Volatile DMap.empty]) }

attr_spec :: { ([(Expr A0, Expr A0)],[Attr A0]) }
attr_spec
: dim_spec                                       { ([],[Dimension DMap.empty $1]) }
| PARAMETER                                      { ([],[Parameter DMap.empty]) }
| access_spec                                    { ([],[$1]) }
| ALLOCATABLE                                    { ([],[Allocatable DMap.empty]) }
| EXTERNAL                                       { ([],[External DMap.empty]) }
| INTENT '(' intent_spec ')'                     { ([],[Intent DMap.empty $3]) }
| INTRINSIC                                      { ([],[Intrinsic DMap.empty]) }
| OPTIONAL                                       { ([],[Optional DMap.empty]) }
| POINTER                                        { ([],[Pointer DMap.empty]) }
| SAVE                                           { ([],[Save DMap.empty]) }
| TARGET                                         { ([],[Target DMap.empty]) }
| UNIT '(' unit_spec ')'                         { ([],[MeasureUnit DMap.empty $3]) }
| VOLATILE                                       { ([],[Volatile DMap.empty]) }

access_spec :: { Attr A0 }
access_spec
: PUBLIC            { Public DMap.empty }
| PRIVATE           { Private DMap.empty }

-- start: units-of-measure extension parsing

unit_stmt :: { Decl A0 }
  : UNIT '::' unit_decl_list  {% getSrcSpanNull >>= (\s -> return $ MeasureUnitDef DMap.empty s $3) }

unit_decl_list :: { [(MeasureUnit, MeasureUnitSpec A0)] }
unit_decl_list
  : unit_decl ',' unit_decl_list  { $1:$3 }
  | unit_decl                     { [$1] }

unit_decl :: { (MeasureUnit, MeasureUnitSpec A0) }
unit_decl
  : srcloc ID '=' unit_spec  {% getSrcSpan $1 >>= (\s -> return ($2, $4)) }

unit_spec :: { MeasureUnitSpec A0 }
unit_spec
: mult_unit_spec '/' mult_unit_spec { UnitQuotient DMap.empty $1 $3 }
| mult_unit_spec                    { UnitProduct DMap.empty $1 }
| {- empty -}                       { UnitNone DMap.empty }

mult_unit_spec :: { [(MeasureUnit, Fraction A0)] }
mult_unit_spec
: mult_unit_spec power_unit_spec { $1++$2 }
| power_unit_spec                { $1 }

power_unit_spec :: { [(MeasureUnit, Fraction A0)] }
power_unit_spec
: ID '**' power_spec { [($1, $3)] }
| ID                 { [($1, NullFraction DMap.empty)] }
| '1'                { [] }

power_spec :: { Fraction A0 }
power_spec
: '(' signed_num '/' signed_num ')' { FractionConst DMap.empty $2 $4 }
| signed_num                        { IntegerConst DMap.empty $1 }
| '(' power_spec ')'                { $2 }

signed_num :: { String }
signed_num
: '-' num { "-" ++ $2 }
| num     { $1 }
 
-- end

array_spec :: { [(Expr A0, Expr A0)] }
array_spec
  : explicit_shape_spec_list                      { map expr2array_spec $1 }

explicit_shape_spec_list :: { [Expr A0] }
explicit_shape_spec_list
  : explicit_shape_spec_list ','  explicit_shape_spec {$1++[$3]}
  | explicit_shape_spec                               {[$1]}

explicit_shape_spec :: { Expr A0 }
explicit_shape_spec
  : expr  { $1 } 
  | bound { $1 }

include_stmt :: { Decl A0 }
: INCLUDE srcloc STR       {% getSrcSpan $2 >>= (\s -> return $ Include DMap.empty (Con DMap.empty s $3)) }

specification_expr :: { Expr A0 }
specification_expr
  : expr { $1 } 

intent_spec :: { IntentAttr A0 }
intent_spec
: IN            {  In DMap.empty }
| OUT           { Out DMap.empty }
| INOUT         { InOut DMap.empty }

specification_stmt :: { Decl A0 }
specification_stmt
  : access_stmt            { $1 }
  | attr_stmt              { $1 }
  | unit_stmt              { $1 }
--  | allocatable_stmt       { $1 }
  | common_stmt            { $1 }
| data_stmt              { DataDecl DMap.empty $1 }
  | equivalence_stmt              { $1 }
--  | dimension_stmt         { $1 }
  | external_stmt          { $1 }
--  | intent_stmt            { $1 }
--  | intrinsic_stmt         { $1 }
  | namelist_stmt            { $1 }
--  | optional_stmt          { $1 }
--  | pointer_stmt           { $1 }
  | save_stmt              { $1 }
--  | target_stmt            { $1 } 

save_stmt :: { Decl A0 }
 : SAVE { AccessStmt DMap.empty (Save DMap.empty) [] }

common_stmt :: { Decl A0 }
: srcloc COMMON '/' id2 '/' vlist  {% getSrcSpan $1 >>= (\s -> return $ Common DMap.empty s (Just $4) $6) }
| srcloc COMMON vlist              {% getSrcSpan $1 >>= (\s -> return $ Common DMap.empty s Nothing $3) }


interface_block :: { Decl A0 }
interface_block
: interface_stmt newline interface_spec_list newline end_interface_stmt  { Interface DMap.empty $1 $3 }

interface_stmt :: { Maybe (GSpec A0) }
interface_stmt
  : INTERFACE generic_spec       { Just $2 }
  | INTERFACE                    { Nothing }
  
interface_spec_list :: { [InterfaceSpec A0] }
interface_spec_list
  : interface_spec_list interface_spec   { $1++[$2] }
  | interface_spec                       { [$1] }
  
interface_spec :: { InterfaceSpec A0 }
interface_spec
  : interface_body               { $1 }
  | module_procedure_stmt        { $1 }
  
end_interface_stmt :: { Maybe (GSpec A0) }
end_interface_stmt
  : END INTERFACE generic_spec       { Just $3 }
  | END INTERFACE                    { Nothing }

interface_body :: { InterfaceSpec A0 } 
interface_body
  : function_stmt  use_stmt_list implicit_part specification_part end_function_stmt 
        {% do { name <- cmpNames (fst4 $1) $5 "interface declaration";
          return (FunctionInterface DMap.empty  name (snd4 $1) $2 $3 $4); }}

  | function_stmt end_function_stmt  
        {% do { name <- cmpNames (fst4 $1) $2 "interface declaration";
          s <- getSrcSpanNull;
          return (FunctionInterface DMap.empty name (snd4 $1) (UseNil DMap.empty) (ImplicitNull DMap.empty) (NullDecl DMap.empty s)); } }       

  | subroutine_stmt use_stmt_list implicit_part specification_part end_subroutine_stmt
        {% do { name <- cmpNames (fst3 $1) $5 "interface declaration";
                return (SubroutineInterface DMap.empty name (snd3 $1) $2 $3 $4); } }

  | subroutine_stmt end_subroutine_stmt 
        {% do { name <- cmpNames (fst3 $1) $2 "interface declaration";
          s <- getSrcSpanNull;
          return (SubroutineInterface DMap.empty name (snd3 $1) (UseNil DMap.empty) (ImplicitNull DMap.empty) (NullDecl DMap.empty s)); }}
  
module_procedure_stmt :: { InterfaceSpec A0 }
module_procedure_stmt
: MODULE PROCEDURE sub_name_list    { ModuleProcedure DMap.empty $3 }

sub_name_list :: { [SubName A0 ] }
sub_name_list
  :  sub_name_list ',' subname  { $1++[$3] }
  |  subname                    { [$1] }

derived_type_def :: { Decl A0 }
derived_type_def
  : srcloc derived_type_stmt private_sequence_stmt component_def_stmt_list end_type_stmt
  {% do { sp <- getSrcSpan $1;
    name <- cmpNames (fst $2) $5 "derived type name";
          return (DerivedTypeDef DMap.empty sp name (snd $2) $3 $4);  } }

derived_type_stmt :: { (SubName A0, [Attr A0]) }
derived_type_stmt
  : TYPE ',' access_spec  '::' type_name         { ($5,[$3]) }
  | TYPE                  '::' type_name         { ($3,[]) }
  | TYPE                       type_name         { ($2,[]) }

end_type_stmt :: { String }
end_type_stmt
  : END TYPE       { "" }
  | END TYPE id2   { $3 }


type_name :: { SubName A0 }
type_name
: ID           { SubName DMap.empty $1 } 

private_sequence_stmt :: { [Attr A0] }
private_sequence_stmt
: PRIVATE SEQUENCE     { [Private DMap.empty, Sequence DMap.empty] }
| SEQUENCE PRIVATE     { [Sequence DMap.empty, Private DMap.empty] }
| PRIVATE              { [Private DMap.empty] }
| SEQUENCE             { [Sequence DMap.empty] }
| {- empty -}          { [] }
  
component_def_stmt_list :: { [Decl A0 ] }
component_def_stmt_list
  : component_def_stmt_list component_def_stmt     { $1++[$2] }
  | component_def_stmt                             { [$1] }

component_def_stmt :: { Decl A0 }
component_def_stmt
  : srcloc type_spec_p component_attr_spec_list '::' entity_decl_list  
  {% (getSrcSpan $1) >>= (\s -> return $ 
         if null (fst $3) 
         then Decl DMap.empty s $5 ((BaseType DMap.empty (fst3 $2) (snd $3) (snd3 $2) (trd3 $2)))
         else Decl DMap.empty s $5 ((ArrayT DMap.empty (fst $3) (fst3 $2) (snd $3) (snd3 $2) (trd3 $2)))) }

component_attr_spec_list :: {([(Expr A0, Expr A0)],[Attr A0])}
component_attr_spec_list
  : component_attr_spec_list ',' component_attr_spec       { (fst $1++fst $3,snd $1++snd $3) }
  | {- empty -}                                            { ([],[]) }

component_attr_spec :: { ([(Expr A0, Expr A0)],[Attr A0]) }
component_attr_spec
:  POINTER              { ([],[Pointer DMap.empty]) }
| dim_spec              { ($1,[]) }

attr_stmt :: { Decl A0 }
attr_stmt : attr_spec_p '(' entity_decl_list  ')'  { AttrStmt DMap.empty (head $ snd $1) ($3 ++ (map (\(x, y) -> (x, y, Nothing,"")) (fst $1))) } 
          | attr_spec_p   { AttrStmt DMap.empty (head $ snd $1) ((map (\(x, y) -> (x, y, Nothing,"")) (fst $1))) } 
| dim_spec_p  { AttrStmt DMap.empty (Dimension DMap.empty $1) [] } 

access_stmt :: { Decl A0 }
access_stmt
: access_spec '::' access_id_list  { AccessStmt DMap.empty $1 $3 }
| access_spec access_id_list       { AccessStmt DMap.empty $1 $2 }
| access_spec                      { AccessStmt DMap.empty $1 [] }
   
access_id_list :: { [GSpec A0] }
access_id_list
  : access_id_list ',' access_id     { $1++[$3] }
  | access_id                        { [$1] }

access_id :: { GSpec A0 }
access_id 
  : generic_spec                     { $1 }
  
generic_spec :: { GSpec A0 }
generic_spec
: srcloc ID       {% getSrcSpan $1 >>= (\s -> return $ GName DMap.empty (Var DMap.empty s [(VarName DMap.empty $2,[])])) } 
| OPERATOR '(' defined_operator ')'   { GOper DMap.empty $3 }
| ASSIGNMENT '(' '=' ')'              { GAssg DMap.empty }
  
data_stmt :: { DataForm A0 }
data_stmt
: DATA data_stmt_set_list   { Data DMap.empty $2 }
  
data_stmt_set_list :: { [(Expr A0, Expr A0)] }
data_stmt_set_list
  : data_stmt_set_list ',' data_stmt_set  { $1++[$3] }
  | data_stmt_set               { [$1] }
  
data_stmt_set :: { (Expr A0, Expr A0) }
data_stmt_set
  : data_stmt_object_list '/' data_stmt_value_list '/'    { ($1,$3) }

data_stmt_object_list :: { Expr A0 }
data_stmt_object_list
: data_stmt_object_list ',' data_stmt_object   { ESeq DMap.empty  (spanTrans $1 $3) $1 $3 }
  | data_stmt_object             { $1 }

data_stmt_object :: { Expr A0 }
data_stmt_object
  : variable      { $1 }
  

data_stmt_value_list :: { Expr A0 }
data_stmt_value_list
: data_stmt_value_list ',' data_stmt_value  { ESeq DMap.empty (spanTrans $1 $3) $1 $3 }
  | data_stmt_value       { $1 }

data_stmt_value :: { Expr A0 }
data_stmt_value
  : primaryP                      { $1 }
  
  
external_stmt :: { Decl A0 }
external_stmt
: EXTERNAL '::' name_list  { ExternalStmt DMap.empty $3 }
| EXTERNAL      name_list  { ExternalStmt DMap.empty $2 }
  
name_list :: { [String] }
name_list
  : name_list ',' id2          { $1++[$3] }
  | id2                        { [$1] }

id2 :: { String } -- hack len
id2 : ID  { $1 }
    | id_keywords { $1 }

id_keywords :: { String } -- identifiers which became keywords, but can still be used as variables
id_keywords : COMMON { "common" } -- allow common as a subname (can happen)
            | ALLOCATE { "allocate " }
      | id_keywords_2 { $1 }

id_keywords_2 :: { String }
id_keywords_2 : IN   { "in"   } 
              | OUT  { "out"  }
              | LEN  { "len"  }
  
defined_operator :: { BinOp A0 }
defined_operator
--  : defined_binary_op
--  | defined_unary_op
  : intrinsic_operator { $1 }

intrinsic_operator :: { BinOp A0 }
intrinsic_operator
  : '**'        { Power DMap.empty }
  | '*'         { Mul DMap.empty }
  | '+'         { Plus DMap.empty }
  | '//'        { Concat DMap.empty }
  | rel_op      { $1  }
--  | '.NOT.'     { Not DMap.empty }
  | '.AND.'     { And DMap.empty }
  | '.OR.'      { Or DMap.empty } 


namelist_stmt :: { Decl A0 }
namelist_stmt
: NAMELIST namelist_list   { Namelist DMap.empty $2 }
  
namelist_list :: { [(Expr A0, [Expr A0])] }
namelist_list
  : namelist_list ',' '/' constant_p '/' namelist_group_object_list   { $1++[($4,$6)] }
  | '/' constant_p '/' namelist_group_object_list                     { [($2,$4)] }

namelist_group_object_list :: { [Expr A0] }
namelist_group_object_list
  : namelist_group_object_list ',' constant_p    { $1++[$3] }
  | constant_p                                   { [$1] }
  
subroutine_stmt :: { (SubName A0, Arg A0, Maybe (BaseType A0)) }
subroutine_stmt
  : SUBROUTINE subname args_p        newline { ($2,$3,Nothing) }
| SUBROUTINE subname srcloc        newline {% (getSrcSpan $3) >>= (\s -> return $ ($2,Arg DMap.empty (NullArg DMap.empty) s,Nothing)) }
  | prefix SUBROUTINE subname args_p newline { ($3,$4,Just (fst3 $1)) }
  
function_stmt :: { (SubName A0, Arg A0, Maybe (BaseType A0), Maybe (VarName A0)) }
function_stmt
 : prefix FUNCTION subname args_p RESULT '(' id2 ')' newline { ($3,$4,Just (fst3 $1),Just (VarName DMap.empty $7)) }
 | prefix FUNCTION subname args_p                    newline { ($3,$4,Just (fst3 $1),Nothing) }
 | FUNCTION subname args_p RESULT '(' id2 ')'        newline { ($2,$3,Nothing,Just (VarName DMap.empty $6)) }
 | FUNCTION subname args_p                           newline { ($2,$3,Nothing,Nothing) }
  
subname :: { SubName A0 }
subname
: ID     { SubName DMap.empty $1 }
| id_keywords { SubName DMap.empty $1 }

  
prefix :: { (BaseType A0, Expr A0, Expr A0) }
prefix
  : type_spec  { $1 }
| RECURSIVE  {% getSrcSpanNull >>= (\s -> return $ (Recursive DMap.empty, NullExpr DMap.empty s, NullExpr DMap.empty s)) }
| PURE       {% getSrcSpanNull >>= (\s -> return $ (Pure DMap.empty, NullExpr DMap.empty s, NullExpr DMap.empty s)) }
| ELEMENTAL  {% getSrcSpanNull >>= (\s -> return $ (Elemental DMap.empty, NullExpr DMap.empty s, NullExpr DMap.empty s)) }

args_p :: { Arg A0 }
args_p
: '(' dummy_arg_list srcloc ')' { ($2 (spanExtR ($3, $3) 1)) }

dummy_arg_list :: { SrcSpan -> Arg A0 }
dummy_arg_list
: dummy_arg_list2        { Arg DMap.empty $1 }
| {- empty -}            { Arg DMap.empty (NullArg DMap.empty) }

dummy_arg_list2 :: { ArgName A0 } 
dummy_arg_list2
: dummy_arg_list2 ',' dummy_arg   { ASeq DMap.empty $1 $3 }
| dummy_arg                       { $1 }

dummy_arg :: { ArgName A0 }
dummy_arg
: ID                     { ArgName DMap.empty $1 }
| '*'                    { ArgName DMap.empty "*" }
  
assignment_stmt :: { Fortran A0 }
assignment_stmt
: variable '=' expr                                  { Assg DMap.empty (spanTrans $1 $3) $1 $3 }
| srcloc ID '(' section_subscript_list ')' '=' expr  {% getSrcSpan $1 >>= (\s -> return $ Assg DMap.empty s (Var DMap.empty s [(VarName DMap.empty $2, $4)]) $7) }



-- moved up to assignment_stmt
variable :: { Expr A0 }
variable
 : srcloc scalar_variable_name_list     {% (getSrcSpan $1) >>= (\s -> return $ Var DMap.empty s $2) }


scalar_variable_name_list :: { [(VarName A0, [Expr A0])] }
scalar_variable_name_list
  : scalar_variable_name_list '%' scalar_variable_name    { $1++[$3] }
  | scalar_variable_name                                  { [$1] }


scalar_variable_name :: { (VarName A0, [Expr A0]) }
scalar_variable_name
: ID '(' section_subscript_list ')' { (VarName DMap.empty $1, $3) }
| ID '(' ')'                        {% getSrcSpanNull >>= (\s -> return $ (VarName DMap.empty $1, [NullExpr DMap.empty s])) }
| ID                                { (VarName DMap.empty $1, []) }
| id_keywords_2          {% getSrcSpanNull >>= (\s -> return $ (VarName DMap.empty $1, [NullExpr DMap.empty s])) }   

-- | TYPE                           { (VarName DMap.empty "type", []) } -- a bit of a hack but 'type' allowed as var name
--                                                              --  but causes REDUCE REDUCE conflicts! 

-- bound comes through int_expr
subscript :: { Expr A0 }
subscript
  : int_expr                                      { $1 }
  | bound                                         { $1 }

bound :: { Expr A0 }
bound
: expr ':' expr                       { Bound DMap.empty (spanTrans $1 $3) $1 $3 }
|  ':'                                {% getSrcSpanNull >>= (\s -> return $ Bound DMap.empty s (NullExpr DMap.empty s) (NullExpr DMap.empty s)) }
| expr ':'                            {% getSrcSpanNull >>= (\s' -> return $ Bound DMap.empty (spanTrans' $1 s') $1 (NullExpr DMap.empty s')) }
| srcloc ':' expr                     {% (getSrcSpan $1) >>= (\s@(_, l) -> return $ Bound DMap.empty s (NullExpr DMap.empty (l, l)) $3) }

section_subscript_list :: { [Expr A0] }
section_subscript_list
  : section_subscript_list ',' section_subscript  { $1++[$3] }
  | section_subscript                             { [$1] }
  
section_subscript :: { Expr A0 }
section_subscript
: subscript                             { $1 }
| srcloc ID '=' expr      {% getSrcSpan $1 >>= (\s -> return $ AssgExpr DMap.empty s $2 $4) }


expr :: { Expr A0 }
expr
  : level_5_expr                                          { $1 }

level_5_expr :: { Expr A0 }
level_5_expr
  : equiv_operand                                      { $1 }

equiv_operand :: { Expr A0 }
equiv_operand
: equiv_operand '.OR.' or_operand                   { Bin DMap.empty (spanTrans $1 $3) (Or DMap.empty) $1 $3 }
  | or_operand                                      { $1 }

or_operand :: { Expr A0 }
or_operand
: or_operand '.AND.' and_operand                    { Bin DMap.empty (spanTrans $1 $3) (And DMap.empty) $1 $3 }
| and_operand                                       { $1 }


and_operand :: { Expr A0 }
and_operand
: level_4_expr                                       { $1 }

level_4_expr :: { Expr A0 }
level_4_expr 
: level_4_expr rel_op level_3_expr                   { Bin DMap.empty (spanTrans $1 $3) $2 $1 $3 }
| level_3_expr                                       { $1 }


level_3_expr :: { Expr A0 }
level_3_expr 
: level_3_expr '//' level_2_expr                     { Bin DMap.empty (spanTrans $1 $3) (Concat DMap.empty) $1 $3 }
| level_2_expr                                       { $1 }

level_2_expr :: { Expr A0 }
level_2_expr 
: level_2_expr '+' add_operand                       { Bin DMap.empty (spanTrans $1 $3) (Plus DMap.empty) $1 $3  }
| level_2_expr '-' add_operand                       { Bin DMap.empty (spanTrans $1 $3) (Minus DMap.empty) $1 $3 }
| add_operand                                        { $1 }

add_operand :: { Expr A0 }
add_operand 
: add_operand '*' mult_operand                       { Bin DMap.empty (spanTrans $1 $3) (Mul DMap.empty) $1 $3 }
| add_operand '/' mult_operand                       { Bin DMap.empty (spanTrans $1 $3) (Div DMap.empty) $1 $3 }
| mult_operand                                       { $1 }

mult_operand :: { Expr A0 }
mult_operand 
: level_1_expr '**' mult_operand                     { Bin DMap.empty (spanTrans $1 $3) (Power DMap.empty) $1 $3 }
| level_1_expr                                       { $1 }

level_1_expr :: { Expr A0 }
level_1_expr 
: srcloc '-' primary               {% getSrcSpan $1 >>= (\s -> return $ Unary DMap.empty s (UMinus DMap.empty) $3) }
| srcloc '.NOT.' primary            {% getSrcSpan $1 >>= (\s -> return $ Unary DMap.empty s (Not DMap.empty) $3) }
| primary                          { $1 }

primaryP :: { Expr A0 }
primaryP :  
   srcloc num '*' primary   {% getSrcSpan $1 >>= (\s -> return $ Bin DMap.empty s (Mul DMap.empty) (Con DMap.empty s $2) $4) }
|  srcloc '-' primary               {% getSrcSpan $1 >>= (\s -> return $ Unary DMap.empty s (UMinus DMap.empty) $3) }
|  primary                  { $1 }


primary :: { Expr A0 }
primary 
: constant                         { $1 }
| variable                         { $1 }
| srcloc type_cast '(' expr ')'    {% getSrcSpan $1 >>= (\s -> return $ Var DMap.empty s [(VarName DMap.empty $2, [$4])]) }
                      
| array_constructor                { $1 }
| srcloc '(' expr ')'                     { %getSrcSpan $1 >>= (\s -> return $ ParenthesizedExpr DMap.empty s $3) }
| srcloc SQRT '(' expr ')'     {% getSrcSpan $1 >>= (\s -> return $ Sqrt DMap.empty s $4) }


type_cast :: { String }
type_cast 
 : REAL      { "REAL"      } -- The following supports the type cast notioatn
 | INTEGER   { "INTEGER"   }
 | LOGICAL   { "LOGICAL"   }
 | CHARACTER { "CHARACTER" }


-- Bit of a conflict here- not entirely sure when this is needed
-- | srcloc ':'                       {% getSrcSpan $1 >>= (\s -> return $ Bound DMap.empty s (NullExpr DMap.empty s) (NullExpr DMap.empty s)) }

fields :: { [String] }
fields
  : fields '.' id2                              { $1++[$3] }
  | id2                                         { [$1] }
  
array_constructor :: { Expr A0 }
array_constructor
: srcloc '(/' expr_list '/)'           {% getSrcSpan $1 >>= (\s -> return $ ArrayCon DMap.empty s $3) } 

expr_list :: { [Expr A0] }
expr_list
  : expr_list ',' expr          { $1++[$3] }
  | expr                        { [$1] }
  
constant_p :: { Expr A0 }
constant_p
  : constant_p2                        { $1 }
 
constant_p2 :: { Expr A0 }
constant_p2
: srcloc ID             {% getSrcSpan $1 >>= (\s -> return $ Var DMap.empty s [(VarName DMap.empty $2,[])]) }
  
constant :: { Expr A0 }
constant 
  : literal_constant                             { $1 }

literal_constant :: { Expr A0 }
literal_constant 
: srcloc num                        {% (getSrcSpan $1) >>= (\s -> return $ Con DMap.empty s $2) }
| srcloc ZLIT                       {% (getSrcSpan $1) >>= (\s -> return $ ConL DMap.empty s 'z' $2) }
| srcloc STR                        {% (getSrcSpan $1) >>= (\s -> return $ ConS DMap.empty s $2) }
| logical_literal_constant          { $1 }

--lit_mark :: { Char }
--lit_mark 
--: 'z' { $1 }
--| 'Z' { $1 }
--| 'b' { $1 }
--| 'B' { $1 }
--| 'o' { $1 }
--| 'O'  { $1 }

logical_literal_constant :: { Expr A0 }
logical_literal_constant 
: srcloc '.TRUE.'                  {% (getSrcSpan $1) >>= (\s -> return $ Con DMap.empty s  ".TRUE.") }
| srcloc '.FALSE.'                 {% (getSrcSpan $1) >>= (\s -> return $ Con DMap.empty s ".FALSE.") }

rel_op :: { BinOp A0 }
  : '=='                           { RelEQ DMap.empty }
  | '/='                           { RelNE DMap.empty }
  | '<'                            { RelLT DMap.empty }
  | '<='                           { RelLE DMap.empty }
  | '>'                            { RelGT DMap.empty }
  | '>='                           { RelGE DMap.empty }

int_expr :: { Expr A0 }
int_expr
  : expr                             { $1 }

do_variable :: { VarName A0 } 
do_variable
: ID                       { VarName DMap.empty $1 }

do_construct :: { Fortran A0 }
do_construct
  : block_do_construct              { $1 }

block_do_construct :: { Fortran A0 } 
block_do_construct                  
: srcloc nonlabel_do_stmt newline do_block {% getSrcSpan $1 >>= (\s -> return $ For DMap.empty s (fst4 $2) (snd4 $2) (trd4 $2) (frh4 $2) $4) } 
-- | srcloc DO WHILE  '(' logical_expr ')' newline do_block {% getSrcSpan $1 >>= (\s -> return $ DoWhile DMap.empty s $5 $8) }
-- | srcloc DO num ',' loop_control newline do_block_num 
--                     {% do { (fs, n) <- return $ $7;
--           s       <- getSrcSpan $1;
--           if (n == $3) then 
--         return $ For DMap.empty s (fst4 $5) (snd4 $5) (trd4 $5) (frh4 $5) fs
--                             else parseError "DO/END DO labels don't match"
--                           } }
-- | srcloc DO num loop_control newline do_block_num 
--                     {% do { (fs, n) <- return $ $6;
--           s       <- getSrcSpan $1;
--           if (n == $3) then 
--         return $ For DMap.empty s (fst4 $4) (snd4 $4) (trd4 $4) (frh4 $4) fs
--                             else parseError "DO/END DO labels don't match"
--                           } }
-- | srcloc DO num loop_control newline do_block_cont 
--                     {% do { (fs, n) <- return $ $6;
--           s       <- getSrcSpan $1;
--           if (n == $3) then 
--         return $ For DMap.empty s (fst4 $4) (snd4 $4) (trd4 $4) (frh4 $4) fs
--             else return $ NullStmt DMap.empty s --  parseError $ "DO/CONTINUE labels don't match" -- NEEDS FIXING!
--                           } }

nonlabel_do_stmt :: { (VarName A0, Expr A0, Expr A0, Expr A0) }
nonlabel_do_stmt
  : DO loop_control                  { $2 }
  | DO                               {% getSrcSpanNull >>= (\s -> return $ (VarName DMap.empty "", NullExpr DMap.empty s, NullExpr DMap.empty s, NullExpr DMap.empty s)) }

loop_control :: { (VarName A0, Expr A0, Expr A0, Expr A0) }
loop_control
  : do_variable '=' int_expr ','  int_expr loop_control2  { ($1,$3,$5,$6) }
--  | int_expr comma_int_expr_opt comma_opt WHILE '(' scalar_logical_expr ')'

loop_control2 :: { Expr A0 }
loop_control2
  : ',' int_expr                     { $2 }
| {- empty -}                      {% getSrcSpanNull >>= (\s -> return $ Con DMap.empty s "1") }

do_block :: { Fortran A0 }
: num end_do             {% getSrcSpanNull >>= (\s -> return $ NullStmt DMap.empty s) }
| end_do                 {% getSrcSpanNull >>= (\s -> return $ NullStmt DMap.empty s) }
| line newline do_block  { FSeq DMap.empty (spanTrans $1 $3) $1 $3 }

do_block_num :: { (Fortran A0, String) }
: num end_do                 {% getSrcSpanNull >>= (\s -> return $ (NullStmt DMap.empty s, $1)) }
| line newline do_block_num  { let (fs, n) = $3 in (FSeq DMap.empty (spanTrans $1 fs) $1 fs, n) }


do_block_cont :: { (Fortran A0, String) }
do_block_cont 
: num CONTINUE  {% getSrcSpanNull >>= (\s -> return $ (NullStmt DMap.empty s, $1)) }
| line newline do_block_cont { let (fs, n) = $3 in (FSeq DMap.empty (spanTrans $1 fs) $1 fs, n) }

line :: { Fortran A0 }
: num executable_constructP   {% getSrcSpanNull >>= (\s -> return $ Label DMap.empty s $1 $2  ) }
| executable_constructP       { $1 }

end_do :: { }
: END DO {}
| ENDDO  {} 

block :: { Fortran A0 }
block
  : executable_construct_list        { $1 }
 
execution_part :: { Fortran A0 }
execution_part 
  : executable_construct_list        { $1 }

executable_construct_list :: { Fortran A0 }
executable_construct_list
: executable_construct newline executable_construct_list { FSeq DMap.empty (spanTrans $1 $3) $1 $3 }
| executable_construct ';' executable_construct_list { FSeq DMap.empty (spanTrans $1 $3) $1 $3 }
| executable_construct newline { $1 }
| executable_construct ';' { $1 }


executable_construct :: { Fortran A0 }
executable_construct
:  num executable_constructP     {% (getSrcSpanNull) >>= (\s -> return $ Label DMap.empty s $1 $2) }
|  executable_constructP     { $1 }

executable_constructP :: { Fortran A0 }
 : action_stmt                                   { $1 }
 | select_construct                              { $1 }  -- GAV ADDED
 | do_construct                                  { $1 }
 | if_construct                                  { $1 }

select_construct :: { Fortran A0 }                        -- GAV ADDED
select_construct
:   srcloc select_stmt case_list default_case_stmt end_select_stmt
                {% getSrcSpan $1 >>= (\s -> return $ SelectStmt (DMap.empty) s $2 $3 $4) }

select_stmt :: { Expr A0 }                                -- GAV ADDED
select_stmt
  : SELECT case_stmt                              { $2 }

end_select_stmt :: {}                                     -- GAV ADDED
end_select_stmt
  : END SELECT                                    {}

case_list :: { [(Expr A0, Fortran A0)] }                  -- GAV ADDED
case_list
  : case_list case_stmt block                     { $1++[($2,$3)] }
  | {- empty -}                                   { [] }

case_stmt :: { Expr A0 }                                  -- GAV ADDED
case_stmt
  : CASE '(' expr ')' newline                     { $3 }

default_case_stmt :: { Maybe(Fortran A0)}                 -- GAV ADDED
default_case_stmt
  : CASE DEFAULT newline block                    { Just($4) }
  | {- empty -}                                   { Nothing }
 
equivalence_stmt :: { Decl A0 }
equivalence_stmt 
: srcloc EQUIVALENCE '(' vlist ')'              {% getSrcSpan $1 >>= (\s -> return $ Equivalence DMap.empty s $4) }

action_stmt :: { Fortran A0 }
action_stmt
  : allocate_stmt                                 { $1 }
  | assignment_stmt                               { $1 }
  | backspace_stmt                                { $1 }
  | call_stmt                                     { $1 }
  | close_stmt                                    { $1 }
  | continue_stmt                                 { $1 }
  | cycle_stmt                                    { $1 }
  | srcloc data_stmt                              {% getSrcSpan $1 >>= (\s -> return $ DataStmt DMap.empty s $2) }
  | deallocate_stmt                               { $1 }
  | endfile_stmt                                  { $1 }
--  | end_function_stmt
--  | end_program_stmt
--  | end_subroutine_stmt
  | exit_stmt                                     { $1 }
  | format_stmt                                   { $1 }
  | forall_stmt                                   { $1 }
  | goto_stmt                                     { $1 }
  | if_stmt                                       { $1 }
  | inquire_stmt                                  { $1 }
  | nullify_stmt                                  { $1 }
  | open_stmt                                     { $1 }
  | pointer_assignment_stmt                       { $1 }
  | print_stmt                                    { $1 }
  | read_stmt                                     { $1 }
  | return_stmt                                   { $1 }
  | pause_stmt                                    { $1 }
  | rewind_stmt                                   { $1 }
  | stop_stmt                                     { $1 }
  | where_stmt                                    { $1 }
  | write_stmt                                    { $1 }
  | srcloc TEXT                 {% getSrcSpan $1 >>= (\s -> return $ TextStmt DMap.empty s $2) }

pause_stmt :: { Fortran A0 }
pause_stmt : srcloc PAUSE STR {% getSrcSpan $1 >>= (\s -> return $ Pause DMap.empty s $3) }

format_stmt :: { Fortran A0 }
format_stmt : srcloc FORMAT io_control_spec_list_d {% getSrcSpan $1 >>= (\s -> return $ Format DMap.empty s $3) }

call_stmt :: { Fortran A0 }
call_stmt
: srcloc CALL call_name '(' actual_arg_spec_list ')' {% getSrcSpan $1 >>= (\s -> return $ Call DMap.empty s $3 (ArgList DMap.empty $5)) }
| srcloc CALL call_name '(' ')'                       {% getSrcSpan $1 >>= (\s -> return $ Call DMap.empty s $3 (ArgList DMap.empty (NullExpr DMap.empty ($1, $1)))) }
| srcloc CALL call_name                             {% getSrcSpan $1 >>= (\s -> return $ Call DMap.empty s $3 (ArgList DMap.empty (NullExpr DMap.empty ($1, $1)))) }

call_name :: { Expr A0 }
call_name
: srcloc id2                 {% (getSrcSpan $1) >>= (\s -> return $ Var DMap.empty s [(VarName DMap.empty $2,[])]) }  

actual_arg_spec_list :: { Expr A0 }
actual_arg_spec_list
: actual_arg_spec_list ',' actual_arg_spec      { ESeq DMap.empty (spanTrans $1 $3) $1 $3 }
| actual_arg_spec                               { $1 }

actual_arg_spec :: { Expr A0 }
actual_arg_spec
  : srcloc ID '=' actual_arg                   {% getSrcSpan $1 >>= (\s -> return $ AssgExpr DMap.empty s $2 $4) }
  | actual_arg                                 { $1 }

actual_arg  :: { Expr A0 }
actual_arg
  : expr                                        { $1 }
--  | variable
--  | procedre_name
--  | alt_return_spec

else_if_list :: { [(Expr A0, Fortran A0)]  }
else_if_list
  : else_if_list else_if_then_stmt block   { $1++[($2,$3)] }
  | {- empty -}                            { [] }

else_if_stmt :: { Expr A0 }
else_if_stmt
  : ELSE if_then_stmt             { $2 }

if_then_stmt :: { Expr A0 }
if_then_stmt 
  : IF '(' logical_expr ')' THEN newline             { $3 }
 

else_if_then_stmt :: { Expr A0 }
else_if_then_stmt 
  : ELSEIF '(' logical_expr ')' THEN newline         { $3 }
  | ELSE IF '(' logical_expr ')' THEN newline         { $4 }


--if_rest :: { ([(Expr A0,Fortran)],Maybe Fortran) }
--: ELSE if_then_stmt block if_rest     { (($2,$3):(fst $4),snd $4) }
--| ELSE block END IF                   { ([],Just $2) }
--| END IF                              { ([],Nothing) }

if_construct :: { Fortran A0 }
if_construct
: 
  -- FORTRAN 77 numerical comparison IFs

  srcloc IF '(' logical_expr ')' num ',' num ',' num 
  {% getSrcSpan $1 >>= (\s -> return $ If DMap.empty s (Bin DMap.empty s (RelLT DMap.empty) $4 (Con DMap.empty s "0")) (Goto DMap.empty s $6)
      [(Bin DMap.empty s (RelEQ DMap.empty) $4 (Con DMap.empty s "0"), (Goto DMap.empty s $8)),
                         (Bin DMap.empty s (RelGT DMap.empty) $4 (Con DMap.empty s "0"), (Goto DMap.empty s $10))] Nothing) }

  -- Other If forms

| srcloc if_then_stmt block end_if_stmt                  
             {% getSrcSpan $1 >>= (\s -> return $ If DMap.empty s $2 $3 [] Nothing) }

| srcloc if_then_stmt block else_if_list end_if_stmt 
             {% getSrcSpan $1 >>= (\s -> return $ If DMap.empty s $2 $3 $4 Nothing) }

| srcloc if_then_stmt block else_if_list ELSE newline block end_if_stmt    
             {% getSrcSpan $1 >>= (\s -> return $ If DMap.empty s $2 $3 $4 (Just $7)) }

--| if_then_stmt block ELSE block end_if_stmt      {% getSrcSpan $1 (\s -> If s $1 $2 [] (Just $4)) }

--: if_then_stmt block if_rest          { (If $1 $2 (fst $3) (snd $3)) }
--: if_then_stmt block else_if_list END IF                { (If $1 $2 $3 Nothing) }
--| if_then_stmt block else_if_list ELSE block END IF     { (If $1 $2 $3 (Just $5)) }
--| if_then_stmt block END IF                             { (If $1 $2 [] Nothing) }
--| if_then_stmt block ELSE block END IF                  { (If $1 $2 [] (Just $4)) }

--  : if_then_stmt block 
----    else_if_list 
--    else_opt 
--    END IF                                        { (If $1 $2 $3) }

end_if_stmt  :: {}
end_if_stmt  : END IF  { }
             | ENDIF   { } 


logical_expr :: { Expr A0 }
logical_expr
  : expr                                          { $1 }

allocate_stmt :: { Fortran A0 }
allocate_stmt
  : srcloc ALLOCATE '(' allocation_list ',' STAT '=' variable ')'  
             {% getSrcSpan $1 >>= (\s -> return $ Allocate DMap.empty s $4 $8) }

  | srcloc ALLOCATE '(' allocation_list ')' 
            {% getSrcSpanNull >>= (\e -> getSrcSpan $1 >>= (\s -> return $ Allocate DMap.empty s $4 (NullExpr DMap.empty e))) }


allocation_list :: { Expr A0 }
allocation_list
: allocation_list ',' allocation                  { ESeq DMap.empty (spanTrans $1 $3) $1 $3 }
| allocation                                      { $1 }
| {- empty -}                                     {% getSrcSpanNull >>= (return . (NullExpr DMap.empty)) }

allocate_object_list :: { [Expr A0] }
allocate_object_list
  : allocate_object_list ',' allocate_object      { $1++[$3] }
  | allocate_object                               { [$1] }

allocate_object :: { Expr A0 }
allocate_object
: srcloc scalar_variable_name_list              {% getSrcSpan $1 >>= (\s -> return $ Var DMap.empty s $2) }

allocate_shape_spec_list :: { [Expr A0] }
allocate_shape_spec_list
  : allocate_shape_spec_list ',' allocate_shape_spec    { $1++[$3] }
  | allocate_shape_spec                                 { [$1] }

allocate_shape_spec :: { Expr A0 }
allocate_shape_spec
  : expr   { $1 }
  | bound  { $1 }

allocation :: { Expr A0 }
allocation
  : allocation_var_list2                          { $1 }

allocation_var_list2 :: { Expr A0 }
allocation_var_list2
: srcloc allocation_var_list                    {% getSrcSpan $1 >>= (\s -> return $ Var DMap.empty s $2) }

allocation_var_list :: { [(VarName A0,[Expr A0])] }
allocation_var_list
  : allocation_var_list '%' allocation_var      { $1++[$3]  }
  | allocation_var                              { [$1] }

allocation_var :: { (VarName A0, [Expr A0]) }
allocation_var
: ID '(' allocate_shape_spec_list ')'         { (VarName DMap.empty $1, $3) }
| ID                                          { (VarName DMap.empty $1, []) }

backspace_stmt :: { Fortran A0 }
backspace_stmt
: srcloc BACKSPACE expr                       {% getSrcSpan $1 >>= (\s -> return $ Backspace DMap.empty s [NoSpec DMap.empty $3]) }
| srcloc BACKSPACE '(' position_spec_list ')' {% getSrcSpan $1 >>= (\s -> return $ Backspace DMap.empty s $4) }

position_spec_list :: { [Spec A0] }
position_spec_list
  : position_spec_list ',' position_spec          { $1++[$3] }
  | position_spec                                 { [$1] }

position_spec :: { Spec A0 }
position_spec
: expr                                          { NoSpec DMap.empty $1 }
 | srcloc UNIT '=' expr                         { Unit DMap.empty $4 } -- units-of-measure
 | srcloc ID '=' expr                           {% case (map (toLower) $2) of
 --                                                    "unit"   -> return (Unit   DMap.empty $4)
                                                       "iostat" -> return (IOStat DMap.empty $4)
                                                       s        ->  parseError ("incorrect name in spec list: " ++ s) }

close_stmt :: { Fortran A0 }
close_stmt
: srcloc CLOSE '(' close_spec_list ')'          {% getSrcSpan $1 >>= (\s -> return $ Close DMap.empty s $4) }

close_spec_list :: { [Spec A0] }
close_spec_list
  : close_spec_list ',' close_spec                { $1++[$3] }
  | close_spec                                    { [$1] }

close_spec :: { Spec A0 }
close_spec
: expr                                          { NoSpec DMap.empty $1 }
| UNIT '=' expr                                 { Unit DMap.empty $3 } -- units-of-measure
| ID '=' expr                          
{% case (map (toLower) $1) of
      "iostat" -> return (IOStat DMap.empty $3)
      "status" -> return (Status DMap.empty $3)
      s        -> parseError ("incorrect name in spec list: " ++ s) }

--external_file_unit :: { Expr A0 }
--external_file_unit
--  : expr                                          { $1 }

continue_stmt :: { Fortran A0 }
continue_stmt
: srcloc CONTINUE                               {% getSrcSpan $1 >>= (return . (Continue DMap.empty)) }

cycle_stmt :: { Fortran A0 }
cycle_stmt
: srcloc CYCLE id2                              {% getSrcSpan $1 >>= (\s -> return $ Cycle DMap.empty s $3) }
| srcloc CYCLE                                  {% getSrcSpan $1 >>= (\s -> return $ Cycle DMap.empty s "") }

deallocate_stmt :: { Fortran A0 }
deallocate_stmt
: srcloc DEALLOCATE '(' allocate_object_list ',' STAT '=' variable ')' 
        {% getSrcSpan $1 >>= (\s -> return $ Deallocate DMap.empty s $4 $8) }

| srcloc DEALLOCATE '(' allocate_object_list ')'
        {% getSrcSpan $1 >>= (\s -> return $ Deallocate DMap.empty s $4 (NullExpr DMap.empty s)) }

endfile_stmt :: { Fortran A0 }
endfile_stmt
: srcloc ENDFILE expr                                  {% getSrcSpan $1 >>= (\s -> return $ Endfile DMap.empty s [NoSpec DMap.empty $3]) }
| srcloc ENDFILE '(' position_spec_list ')'            {% getSrcSpan $1 >>= (\s -> return $ Endfile DMap.empty s $4) }

exit_stmt :: { Fortran A0 }
exit_stmt
: srcloc EXIT id2                                    {% getSrcSpan $1 >>= (\s -> return $ Exit DMap.empty s $3) }
| srcloc EXIT                                        {% getSrcSpan $1 >>= (\s -> return $ Exit DMap.empty s "") }

forall_stmt :: { Fortran A0 }
forall_stmt 
: srcloc FORALL forall_header forall_assignment_stmt 
                 {% getSrcSpan $1 >>= (\s -> return $ Forall DMap.empty s $3 $4) }

  | srcloc FORALL forall_header newline forall_assignment_stmt_list forall_stmt_end 
                 {% getSrcSpan $1 >>= (\s -> return $ Forall DMap.empty s $3 $5) }

forall_stmt_end :: {}
forall_stmt_end 
  : END FORALL       {}
 | {- empty -}       {}

forall_header :: { ([(String,Expr A0,Expr A0,Expr A0)],Expr A0) }
forall_header
  : '(' forall_triplet_spec_list ',' expr ')'   { ($2,$4) }
| '(' forall_triplet_spec_list ')'              {% getSrcSpanNull >>= (\s -> return ($2, NullExpr DMap.empty s)) }

forall_triplet_spec_list :: { [(String,Expr A0,Expr A0,Expr A0)] }
forall_triplet_spec_list
  : forall_triplet_spec_list ',' forall_triplet_spec  { $1++[$3]}
  | forall_triplet_spec                               { [$1] }

forall_triplet_spec :: { (String,Expr A0,Expr A0,Expr A0) }
forall_triplet_spec
  : id2 '=' int_expr ':' int_expr ';' int_expr { ($1,$3,$5,$7) }
| id2 '=' int_expr ':' int_expr              {% getSrcSpanNull >>= (\s -> return ($1,$3,$5,NullExpr DMap.empty s)) }

forall_assignment_stmt :: { Fortran A0 }
forall_assignment_stmt
: assignment_stmt                               { $1 }
| pointer_assignment_stmt                       { $1 }


forall_assignment_stmt_list :: { Fortran A0 }
forall_assignment_stmt_list 
: forall_assignment_stmt newline forall_assignment_stmt_list { FSeq DMap.empty (spanTrans $1 $3) $1 $3 }
| forall_assignment_stmt newline                             { $1 }


goto_stmt :: { Fortran A0 }
goto_stmt
: srcloc GOTO num                                    {% getSrcSpan $1 >>= (\s -> return $ Goto DMap.empty s $3) }

if_stmt :: { Fortran A0 }
if_stmt
: srcloc IF '(' logical_expr ')' action_stmt       {% getSrcSpan $1 >>= (\s -> return $ If DMap.empty s $4 $6 [] Nothing) }

inquire_stmt :: { Fortran A0 }
inquire_stmt
: srcloc INQUIRE '(' inquire_spec_list ')' 
        {% getSrcSpan $1 >>= (\s -> return $ Inquire DMap.empty s $4 []) } 
  | srcloc INQUIRE '(' IOLENGTH '=' variable ')' output_item_list 

        {% getSrcSpan $1 >>= (\s -> return $ Inquire DMap.empty s [IOLength DMap.empty $6] $8) }

inquire_spec_list :: { [Spec A0] }
inquire_spec_list
  : inquire_spec_list ',' inquire_spec           { $1++[$3] }
  | inquire_spec                                 { [$1] }

inquire_spec :: { Spec A0 }
inquire_spec
: expr                             { NoSpec DMap.empty $1 }
| UNIT '=' variable                { Unit DMap.empty $3 } -- units-of-measure
| READ '=' variable                { Read DMap.empty $3 }
| WRITE '=' variable               { WriteSp DMap.empty $3 }
| ID '=' expr                      {% case (map (toLower) $1) of
                                            "file"        -> return (File DMap.empty    $3)
                                            "iostat"      -> return (IOStat DMap.empty     $3)
                                            "exist"       -> return (Exist DMap.empty      $3)
                                            "opened"      -> return (Opened DMap.empty     $3)
                                            "number"      -> return (Number DMap.empty     $3)
                                            "named"       -> return (Named DMap.empty      $3)
                                            "name"        -> return (Name DMap.empty       $3)
                                            "access"      -> return (Access DMap.empty     $3)
                                            "sequential"  -> return (Sequential DMap.empty $3)
                                            "direct"      -> return (Direct DMap.empty     $3)
                                            "form"        -> return (Form DMap.empty       $3)
                                            "formatted"   -> return (Formatted DMap.empty  $3)
                                            "unformatted" -> return (Unformatted DMap.empty $3)
                                            "recl"        -> return (Recl    DMap.empty   $3)
                                            "nextrec"     -> return (NextRec DMap.empty   $3)
                                            "blank"       -> return (Blank   DMap.empty   $3)
                                            "position"    -> return (Position DMap.empty  $3)
                                            "action"      -> return (Action   DMap.empty  $3)
                                            "readwrite"   -> return (ReadWrite DMap.empty $3)
                                            "delim"       -> return (Delim    DMap.empty  $3)
                                            "pad"         -> return (Pad     DMap.empty   $3)
                                            s             -> parseError ("incorrect name in spec list: " ++ s) }
--io_implied_do
--io_implied_do
--  : '(' io_implied_do_object_list ',' io_implied_do_control ')'
--io_implied_do_object
--io_implied_do_object
--  : input_item
--  | output_item
--io_implied_do_control
--io_implied_do_control
--  : do_variable '=' scalar_int_expr ',' scalar_int_expr ',' scalar_int_expr
--  | do_variable '=' scalar_int_expr ',' scalar_int_expr
--file_name_expr
--file_name_expr
--  : scalar_char_expr



nullify_stmt :: { Fortran A0 }
nullify_stmt
: srcloc NULLIFY '(' pointer_object_list ')'           {% getSrcSpan $1 >>= (\s -> return $ Nullify DMap.empty s $4) }

pointer_object_list :: { [Expr A0] }
pointer_object_list
  : pointer_object_list ',' pointer_object        { $1++[$3] }
  | pointer_object                                { [$1] }

pointer_object :: { Expr A0 }
pointer_object
  : structure_component                           { $1 }

structure_component :: { Expr A0 }
structure_component
  : variable                                      { $1 }

open_stmt :: { Fortran A0 }
open_stmt
: srcloc OPEN '(' connect_spec_list ')'          {% getSrcSpan $1 >>= (\s -> return $ Open DMap.empty s $4) }

connect_spec_list :: { [Spec A0] }
connect_spec_list
  : connect_spec_list ',' connect_spec            { $1++[$3] }
  | connect_spec                                  { [$1] }

connect_spec :: { Spec A0 }
connect_spec
: expr                    { NoSpec DMap.empty $1 }
| UNIT '=' expr           { Unit DMap.empty $3 } 
| ID '=' expr             {% case (map (toLower) $1) of
                                          "iostat"   -> return (IOStat DMap.empty $3)
                                          "file"     -> return (File DMap.empty $3)
                                          "status"   -> return (Status DMap.empty $3)
                                          "access"   -> return (Access DMap.empty $3)
                                          "form"     -> return (Form DMap.empty $3)
                                          "recl"     -> return (Recl DMap.empty $3)
                                          "blank"    -> return (Blank DMap.empty $3)
                                          "position" -> return (Position DMap.empty $3)
                                          "action"   -> return (Action DMap.empty $3)
                                          "delim"    -> return (Delim DMap.empty $3)
                                          "pad"      -> return (Pad DMap.empty $3)
                                          s          -> parseError ("incorrect name in spec list: " ++ s) }

file_name_expr :: { Expr A0 }
file_name_expr
  : scalar_char_expr                              { $1 }

scalar_char_expr :: { Expr A0 }
scalar_char_expr
  : expr                                          { $1 }

scalar_int_expr :: { Expr A0 }
scalar_int_expr
  : expr                                          { $1 }

pointer_assignment_stmt :: { Fortran A0 }
pointer_assignment_stmt
: srcloc pointer_object '=>' target                    {% getSrcSpan $1 >>= (\s -> return $ PointerAssg DMap.empty s $2 $4) }

target :: { Expr A0 }
target
  : expr                                          { $1 }



print_stmt :: { Fortran A0 }
print_stmt
: srcloc PRINT format ',' output_item_list           {% getSrcSpan $1 >>= (\s -> return $  Print DMap.empty s $3 $5) }
| srcloc PRINT format                                {% getSrcSpan $1 >>= (\s -> return $ Print DMap.empty s $3 []) }

-- also replaces io_unit
format :: { Expr A0 }
format
: expr                                  { $1 }
--  | literal_constant                  { (Con $1) } -- label
| '*'                                   {% getSrcSpanNull >>= (\s -> return $ Var DMap.empty s [(VarName DMap.empty "*",[])]) }

output_item_list :: { [Expr A0] }
output_item_list
  : output_item_list ','  output_item             { $1++[$3] }
  | output_item                                   { [$1] }

output_item :: { Expr A0 }
output_item
  : expr                                          { $1 }
| '(' actual_arg_spec_list ')'                    { $2 }
--  | io_implied_do                                 { $1 }


read_stmt :: { Fortran A0 }
read_stmt
: srcloc READ '(' io_control_spec_list ')' input_item_list {% getSrcSpan $1 >>= (\s -> return $ ReadS DMap.empty s $4 $6) }
| srcloc READ io_control_spec ',' input_item_list   {% getSrcSpan $1 >>= (\s -> return $ ReadS DMap.empty s $3 $5) }
| srcloc READ '(' io_control_spec_list ')'                 {% getSrcSpan $1 >>= (\s -> return $ ReadS DMap.empty s $4 []) }


io_control_spec_list_d :: { [Spec A0] }
io_control_spec_list_d :
  '(/' ',' io_control_spec_list_d2      { (Delimiter DMap.empty):$3 }
| '('      io_control_spec_list_d2      { $2 }

{-

| '(/' ',' io_control_spec_list '/)'     { ((Delimiter DMap.empty):$3) ++ [Delimiter DMap.empty] } 
| '('      io_control_spec_list '/)'     { $2 ++ [Delimiter DMap.empty] }
  '(/' ',' io_control_spec_list ',' '/)' { ((Delimiter DMap.empty):$3) ++ [Delimiter DMap.empty] } 
| '('      io_control_spec_list ',' '/)' { $2 ++ [Delimiter DMap.empty] }
 -}


io_control_spec_list_d2 :: { [Spec A0] }
io_control_spec_list_d2 : 
  io_control_spec ',' io_control_spec_list_d2  { $1 ++ $3 }
| '/)'                                         { [Delimiter DMap.empty] }
| io_control_spec ')'                          { $1 }
| io_control_spec '/)'                         { $1 ++ [Delimiter DMap.empty] }


io_control_spec_list :: { [Spec A0] }
io_control_spec_list : 
  io_control_spec ',' io_control_spec_list  { $1 ++ $3 }
| io_control_spec                           { $1 }

-- (unit, fmt = format), (rec, advance = expr), (nml, iostat, id = var), (err, end, eor = label)

io_control_spec :: { [Spec A0] } 
io_control_spec
: --format                           { [NoSpec DMap.empty $1] }
  '/'                                { [Delimiter DMap.empty] }
| '*'                                {% getSrcSpanNull >>= (\s -> return $ [NoSpec DMap.empty (Var DMap.empty s [(VarName DMap.empty "*", [])])]) }
| STR                                { [StringLit DMap.empty $1] }
| STR '/'                            { [StringLit DMap.empty $1, Delimiter DMap.empty] }
| END '=' label                      { [End DMap.empty $3] }
| io_control_spec_id                 { [$1] }
| num                                {% getSrcSpanNull >>= (\s -> return $ [Number DMap.empty (Con DMap.empty s $1)]) }
| floating_spec                      { [$1] }


floating_spec :: { Spec A0 }
floating_spec : DATA_DESC      {% getSrcSpanNull >>= (\s -> return $ Floating DMap.empty (NullExpr DMap.empty s) (Con DMap.empty s $1) ) }
| num DATA_DESC  {% getSrcSpanNull >>= (\s -> return $ Floating DMap.empty (Con DMap.empty s $1) (Con DMap.empty s $2)) }

io_control_spec_id :: { Spec A0 }
: variable                               { NoSpec DMap.empty $1 }
--| UNIT '=' format                      { Unit DMap.empty $3 }
--| ID '=' format                          {% case (map (toLower) $1) of
--                                                     "fmt"     -> return (FMT DMap.empty $3)
--                                                     "rec"     -> return (Rec DMap.empty $3)
--                                                     "advance" -> return (Advance DMap.empty $3)
--                                                     "nml"     -> return (NML DMap.empty $3)
--                                                     "iostat"  -> return (IOStat DMap.empty $3)
--                                                     "size"    -> return (Size DMap.empty $3)
--                                                     "eor"     -> return (Eor DMap.empty $3)
--                                                     s         -> parseError ("incorrect name in spec list: " ++ s) }

--  | namelist_group_name                           { NoSpec $1 }

input_item_list :: { [Expr A0] }
input_item_list
  : input_item_list ',' input_item         { $1++[$3] }
  -- | srcloc '(' input_item ')'              { %getSrcSpan $1 >>= (\s -> return $ [ParenthesizedExpr DMap.empty s $3]) }
  | input_item                             { [$1] }

input_item :: { Expr A0 }
input_item
  : srcloc '(' variable ')'                { %getSrcSpan $1 >>= (\s -> return $ ParenthesizedExpr DMap.empty s $3)}
  | variable                               { $1 }


--  | io_implied_do
--io_unit :: { Expr A0 }
--io_unit
--  : expr                                          { $1 }
--  | '*'                                           { (Var [(VarName  DMap.empty "*",[])]) }
--  | internal_file_unit                            { $1 }

label :: { Expr A0 }
label
: srcloc LABEL                       {% (getSrcSpan $1) >>= (\s -> return $ Con DMap.empty s $2) }

num :: { String }
num
: NUM { $1 }
| '1' { "1" }

--internal_file_unit :: { Expr A0 }
--internal_file_unit
--  : default_char_variable                         { $1 }

--default_char_variable :: { Expr A0 }
--default_char_variable
--  : variable       { $1 }

namelist_group_name :: { Expr A0 }
namelist_group_name
  : variable           { $1 }


return_stmt :: { Fortran A0 }
return_stmt
: srcloc RETURN                   {% getSrcSpan $1 >>= (\s -> return $ Return DMap.empty s (NullExpr DMap.empty s)) }
| srcloc RETURN int_expr          {% getSrcSpan $1 >>= (\s -> return $ Return DMap.empty s $3) }

scalar_default_int_variable :: { Expr A0 }
scalar_default_int_variable
  : variable                                      { $1 }

scalar_default_char_expr :: { Expr A0 }
scalar_default_char_expr
  : expr                                          { $1 }

rewind_stmt :: { Fortran A0 }
rewind_stmt
: srcloc REWIND expr                        {% getSrcSpan $1 >>= (\s -> return $ Rewind DMap.empty s [NoSpec DMap.empty $3]) }
| srcloc REWIND '(' position_spec_list ')'  {% getSrcSpan $1 >>= (\s -> return $ Rewind DMap.empty s $4) }



stop_stmt :: { Fortran A0 }
stop_stmt
: srcloc STOP stop_code                  {% getSrcSpan $1 >>= (\s -> return $ Stop DMap.empty s $3) }
| srcloc STOP                            {% getSrcSpan $1 >>= (\s -> return $ Stop DMap.empty s (NullExpr DMap.empty s)) }

stop_code :: { Expr A0 }
stop_code
  : constant                                     { $1 }
  


where_stmt :: { Fortran A0 }
where_stmt
: srcloc WHERE '(' mask_expr ')' where_assignment_stmt {% getSrcSpan $1 >>= (\s -> return $ Where DMap.empty s $4 $6 Nothing) } 
| srcloc WHERE '(' mask_expr ')' newline where_assignment_stmt {% getSrcSpan $1 >>= (\s -> return $ Where DMap.empty s $4 $7 Nothing) } 
|  srcloc WHERE '(' mask_expr ')' newline where_assignment_stmt newline ELSEWHERE newline where_assignment_stmt 
newline END WHERE {% getSrcSpan $1 >>= (\s -> return $ Where DMap.empty s $4 $7 (Just $11)) }

where_assignment_stmt :: { Fortran A0 }
where_assignment_stmt
  : assignment_stmt                              { $1 }
mask_expr :: { Expr A0 }
mask_expr
  : logical_expr                                 { $1 }



write_stmt :: { Fortran A0 }
write_stmt
: WRITE '(' io_control_spec_list ')' output_item_list  {% getSrcSpanNull >>= (\s -> return $ Write DMap.empty s $3 $5) }
| WRITE '(' io_control_spec_list ')'                   {% getSrcSpanNull >>= (\s -> return $ Write DMap.empty s $3 []) }

srcloc :: { SrcLoc }  :    {% getSrcLoc' }

{

getSrcLoc' = do (LH.SrcLoc f l c) <- getSrcLoc
                return (SrcLoc f l (c - 1))

-- Initial annotations from parser

-- Type of annotations

type A0 = DMap.Map String [String]

getSrcSpan :: SrcLoc -> P (SrcLoc, SrcLoc)
getSrcSpan l = do l' <- getSrcLoc'
                  return $ (l, l')

-- 0-length span at current position

getSrcSpanNull :: P (SrcLoc, SrcLoc)
getSrcSpanNull = do l <- getSrcLoc'
                    return $ (l, l)

spanTrans x y = let (l, _) = srcSpan x
                    (_, l') = srcSpan y
                in (l, l')

spanTrans' x (_, l') = let (l, _) = srcSpan x
                       in (l, l')

spanExtendR t x = let (l, l') = srcSpan t
                  in (l, SrcLoc (srcFilename l') (srcLine l') (srcColumn l' + x))

spanExtR (l, l') x = (l, SrcLoc (srcFilename l') (srcLine l') (srcColumn l' + x))

spanExtendL t x = let (l, l') = srcSpan t
                  in (SrcLoc (srcFilename l) (srcLine l) (srcColumn l - x), l')

happyError :: P a
happyError = parseError "syntax error (from parser)"

parseError :: String -> P a
parseError m = do srcloc <- getSrcLoc'
                  fail (srcFilename srcloc ++ ": line " ++ show (srcLine srcloc) ++ " column " ++ show (srcColumn srcloc) ++ ": " ++ m ++ "\n")

tokenFollows s = case alexScan ('\0',[],s) 0 of
                    AlexEOF                 -> "end of file"
                    AlexError  _            -> ""
                    AlexSkip  (_,b,t) len   -> tokenFollows t
                    AlexToken (_,b,t) len _ -> take len s

parse :: String -> Program A0
parse p = case (runParser parser (pre_process p)) of 
            (ParseOk p)       -> p
            (ParseFailed l e) ->  error e
            
--	<GAV ADDED to work with F95StatementParser>
statement_parse :: String -> Fortran A0
statement_parse p = case (runParser statement_parser (pre_process p)) of 
            (ParseOk p)       -> p
            (ParseFailed l e) ->  error e 

context_parse :: String -> Decl A0
context_parse p = case (runParser context_parser (pre_process p)) of 
            (ParseOk p)       -> p
            (ParseFailed l e) ->  error e 
-- 	</GAV ADDED to work with F95StatementParser>

--parse :: String -> [Program]
--parse = clean . parser . fixdecls . scan

parseF :: String -> IO ()
parseF f = do s <- readFile f
              print (parse s)

--scanF :: String -> IO ()
--scanF f = do s <- readFile f
--             print (scan s)

fst3 (a,b,c) = a
snd3 (a,b,c) = b
trd3 (a,b,c) = c

fst4 (a,b,c,d) = a
snd4 (a,b,c,d) = b
trd4 (a,b,c,d) = c
frh4 (a,b,c,d) = d

cmpNames :: SubName A0 -> String -> String -> P (SubName A0)
cmpNames x "" z                        = return x
cmpNames (SubName a x) y z | (toLower_str x)==(toLower_str y) = return (SubName a x)
                           | otherwise = parseError (z ++ " name \""++x++"\" does not match \""++y++"\" in end " ++ z ++ " statement\n")
cmpNames s y z                       = parseError (z ++" names do not match\n")

toLower_str :: String -> String
toLower_str x = map (toLower) x

expr2array_spec (Bound _ _ e e') = (e, e') -- possibly a bit dodgy- uses undefined
expr2array_spec e = (NullExpr DMap.empty (srcSpan e) , e)

}
