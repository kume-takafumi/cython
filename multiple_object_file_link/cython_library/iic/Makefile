#------------------------s.
all: iic0 iic1 iic2
iic0: ./cython_iic.pyx
	cython --cplus ./cython_iic.pyx
iic1: ./cython_iic.cpp
	cl /Fo:"./cython_iic.obj" /EHsc /c ./cython_iic.cpp
iic2: ./setup.py
	python ./setup.py build_ext --build-lib ../../
#------------------------e.
