#<cython_library.pxd>
import cython
from libc.stdlib cimport malloc, free

import pyximport
pyximport.install()

import signal
signal.signal(signal.SIGINT, signal.SIG_DFL)

cimport cython_library

import sys
#------------------------------s.
sys.path.insert(0,"./cython_library/iic")
import cython_iic
original_sys_path00 = list(sys.path)
sys.path = original_sys_path00
#------------------------------e.

#----------------------------------------s.
cdef api void callback1(char *s):
    print(s.decode('utf-8'));
#----------------------------------------e.

#----------------------------------------s.
cdef api void callback2(char *s):
    print(s.decode('utf-8'));
#----------------------------------------e.

#----------------------------------------s.
cdef api void funcReqestCallBack(
    void(*cbFunc)(char *s),
    char *s
):
    <object>cbFunc(s);
#----------------------------------------e.
