set history save on
set history size unlimited

define xxd
  dump binary memory dump.bin $arg0 $arg0+$arg1
  shell xxd dump.bin
end
