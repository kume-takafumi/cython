//<./main.cpp>
#include <Python.h>
#include <stdio.h>
#include <stdlib.h>
#include "./main.h"
#include "./cython_main.h"

//------------------------------------------s.
static void gmain00() {
	Py_Initialize();
	cython_main();
	Py_Finalize();
};//-----------------------------------------e.

//------------------------------------------s.
int main(int argc, char **argv) {
	gmain00();
return 0;
}//-----------------------------------------e.
