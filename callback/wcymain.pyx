import cython
from libc.stdlib cimport malloc, free
#cimport numpy as np

import pyximport
pyximport.install()

cimport wcymain

#↓↓↓↓cui(cmd) line kill switch cython!!--s.
import signal
signal.signal(signal.SIGINT, signal.SIG_DFL)

#----------------------------------------s.
#//コーバック関数1.
cdef api void callback1(char *s):
	print(s.decode('utf-8'));
#----------------------------------------e.

#----------------------------------------s.
#//コールバック関数2.
cdef api void callback2(char *s):
	print(s.decode('utf-8'));
#----------------------------------------e.

#----------------------------------------s.
#コールバック関数を呼び出す関数.
cdef api void funcReqestCallBack(
	void(*cbFunc)(char *s),
	char *s
):
	<object>cbFunc(s);
#----------------------------------------e.