set history save
set history size unlimited

define xxd
  dump binary memory dump.bin $arg0 $arg0+$arg1
  shell xxd dump.bin
end

define reval
  call(rb_p(rb_eval_string_protect($arg0,(int*)0)))
end

define rinspect
  call(rb_p($arg0))
end
