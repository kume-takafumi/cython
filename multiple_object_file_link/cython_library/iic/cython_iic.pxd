#<cython_iic.pxd>
import cython

#----------------------------------------s.
cdef extern from "./iic.h":
    cdef cppclass mys_iic:
        int size,*array;
        void hellow_iic_hpp();
#----------------------------------------e.

#----------------------------------------s.
cdef extern from "./iic.c":
    void hellow_iic_cpp();
#----------------------------------------e.

cdef void hellow_array_iic(mys_iic *Indata);

cdef api void funcReqestCallBack_iic(void(*cbFunc)(mys_iic *Indata), mys_iic *Indata);
