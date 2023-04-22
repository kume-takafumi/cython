#<cython_library.pxd>
import cython
from libc.stdlib cimport malloc, free

#----------------------------------------s.
cdef extern from "Python.h":
	int PyImport_AppendInittab(const char *name, object(*initfunc)())
	void Py_Initialize()
	void Py_Finalize()
#----------------------------------------e.

cdef api void funcReqestCallBack(void(*cbFunc)(char *s), char *s);

#----------------------------------------s.
cdef extern from "./cython_library/iic/iic.h":
	cdef cppclass mys_iic:
		int size,*array;
		void test();
#----------------------------------------e.

#----------------------------------------s.
cdef extern from "./cython_library/iic/cython_iic_api.h":
	int import_cython_iic();
	void hellow_iic(char *s);
#----------------------------------------e.
