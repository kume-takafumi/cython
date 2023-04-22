#<cython_iic.pyx>
import cython
import signal
from libc.stdlib cimport malloc, free
signal.signal(signal.SIGINT, signal.SIG_DFL)

#------------------------------s.
import sys
sys.path.insert(0,"./cython_library/iic")
cimport cython_iic
original_sys_path00 = list(sys.path)
sys.path = original_sys_path00
#------------------------------e.

#------------------------------s.
cdef api void hellow_iic(char *s):
	print("cdef api void hellow_iic(char *s):",s.decode('utf-8'));
#------------------------------e.

#------------------------------s.
cdef api void hellow_array_iic(mys_iic *Indata):
	print("x:",Indata.array[Indata.size-1],'cdef api void hellow_array_iic(mys_iic *Indata):')
	cdef int x=0;
	for x in range(Indata.size-1,Indata.size):
		print("x:",Indata.array[x])
#------------------------------e.

#------------------------------s.
cdef api void funcReqestCallBack_iic(
    void(*cbFunc)(mys_iic *Indata),
    mys_iic *Indata
):
	<object>cbFunc(Indata);
#------------------------------e.


#------------------------------s.
cdef class classLocal_PyMySIIC:
	cdef mys_iic *cdata_mysiic
	def __cinit__(self):
		self.cdata_mysiic = NULL
	def call_hello(self):
		self.cdata_mysiic.hellow_iic_hpp()
#------------------------------e.

#------------------------------s.
cdef api void func_cppclass():
	cdef local_variable_iic = classLocal_PyMySIIC()
	local_variable_iic.call_hello()
	hellow_iic_cpp()
#------------------------------s.
