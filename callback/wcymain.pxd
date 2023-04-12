import cython
from libc.stdlib cimport malloc, free
#cimport numpy as np

#----------------------------------------s.
cdef extern from "Python.h":
	int PyImport_AppendInittab(const char *name, object(*initfunc)())
	void Py_Initialize()
	void Py_Finalize()
#----------------------------------------e.

#----------------------------------------s.
cdef extern from "./main.h":
	cdef void callback1(char *s);
	cdef void callback2(char *s);
#----------------------------------------e.

cdef api void funcReqestCallBack(void(*cbFunc)(char *s), char *s);