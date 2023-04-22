@echo off
call code ^
./workspace.bat ^
./setup.py ^
./cython_library/iic/setup.py ^
./Makefile ^
./cython_library/iic/Makefile ^
./main.cpp ^
./cython_main.cpp ^
./cython_main.h ^
./cython_library.pxd ^
./cython_library.pyx ^
./cython_library/iic/iic.c ^
./cython_library/iic/iic.h ^
./cython_library/iic/cython_iic.pxd ^
./cython_library/iic/cython_iic.pyx
