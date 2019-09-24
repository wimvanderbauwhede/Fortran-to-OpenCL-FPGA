SRC=velnw_feedbf_les_adam_press_device_code
refactorF4acc.pl -P translate_to_OpenCL_with_pipes -c rf4a_to_C.cfg 
cp  Temp/$SRC.cl Temp/${SRC}_ORIG.cl
cpp  -I. -P Temp/$SRC.cl > tmpp.cl
mv tmpp.cl $SRC.cl
rm -Rf Temp
