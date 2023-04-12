//<./main.cpp>
#include <Python.h>
#include <stdio.h>
#include <stdlib.h>
#include "./main.h"
#include "./wcymain_api.h"

//------------------------------------------s.
static void gmain() {
	Py_Initialize();
	import_wcymain();
	char s[2][32] = {"hello cy callback1.","hello cy callback2."};
	cbFuncName cbnamecut[2] = {callback1,callback2};
	for(int x = 0; x < 2; x++) {
		funcReqestCallBack(cbnamecut[x],s[x]);
	}
	Py_Finalize();
};//-----------------------------------------e.

//------------------------------------------s.
int main(int argc, char **argv) {
	gmain();
return 0;
}//-----------------------------------------e.