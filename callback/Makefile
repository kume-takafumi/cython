sc= /source-charset:utf-8

all: s m

# #------------------------s.
# s: ./setup.py
# 	python ./setup.py build_ext --build-lib ../
# #bottom up derectory.→ → → → → ↑↑↑↑↑↑↑↑↑↑↑↑↑
# #------------------------e.

#------------------------s.
s: ./setup.py
	python ./setup.py build_ext --inplace
#------------------------e.

#------------------------s.
m: m_ _m
m_: ./main.cpp ./main.h ./wcymain_api.h
	cl $(sc) /Fe:"./main.exe" /Fo:"./main.obj" /EHsc ./main.cpp /I"C:/Program Files/Python38/include"
_m: ./main.exe
	./main.exe
#------------------------e.