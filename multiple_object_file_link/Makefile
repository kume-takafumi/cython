
all : iic clo cm ma

#------------------------s.
iic: iic0 iic1 iic2
iic0:
	cd "./cython_library/iic" && make iic0
iic1:
	cd "./cython_library/iic" && make iic1
iic2:
	cd "./cython_library/iic" && make iic2
#------------------------e.

#------------------------s.
clo: clo0 clo1 clo2
clo0: ./cython_library.pyx
	cython --cplus ./cython_library.pyx
clo1: ./cython_library.cpp
	cl /Fo:"./cython_library.obj" /EHsc /c ./cython_library.cpp
clo2: ./setup.py
	python ./setup.py build_ext --inplace
#------------------------e.

#------------------------s.
cm: ./cython_library_api.h ./cython_library/iic/cython_iic_api.h ./cython_library/iic/iic.h ./cython_main.h ./cython_main.cpp
	cl /Fo:"./cython_main.obj" /EHsc /c ./cython_main.cpp
#------------------------e.

#------------------------s.
ma: ma0 ma1 exe
ma0: ./main.cpp ./cython_main.h
	cl /Fo:"./main.obj" /EHsc /c ./main.cpp 
ma1: ./main.obj ./cython_main.obj ./cython_library.obj ./cython_library/iic/cython_iic.obj
	link /out:"./main.exe" ./main.obj ./cython_main.obj ./cython_library.obj ./cython_library/iic/cython_iic.obj
exe: ./main.exe
	./main.exe
#------------------------e.
