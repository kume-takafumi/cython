//<./cython_main.cpp>
#include <Python.h>
#include <stdio.h>
#include <stdlib.h>
#include <string>
#include <iostream>
using namespace std;
#include "./cython_main.h"

//------------------------------------------s.
static void gmain00() {
	import_cython_library();
	char s[2][32] = {"cython hello callback1.","cython hello callback2."};
	cbFuncName cbnamecut[2] = {callback1,callback2};
	for(int x = 0; x < 1; x++) {
		funcReqestCallBack(cbnamecut[x],s[x]);
	}
};//-----------------------------------------e.

//------------------------------------------s.
static void gmain01() {
	import_cython_iic();
	//char *a00 = "321";
	//hellow_iic(a00);
	func_cppclass();
};//-----------------------------------------e.

//------------------------------------------s.
static void gmain02() {
	import_cython_iic();
	mys_iic _iicdata(1000001),*iicdata=&_iicdata;
	for(int x = 0; x < iicdata->size; x++) {
		iicdata->array[x] = x;
	}
	cbFuncName_mys_iic cbnamecut[2] = {
		hellow_array_iic,
		hellow_array_iic
	};
	for(int x = 0; x < 1; x++) {
		funcReqestCallBack_iic(cbnamecut[x], iicdata);
	}
};//-----------------------------------------e.

//------------------------------------------s.
void cython_main() {
    gmain00();
    gmain01();
	gmain02();
};//-----------------------------------------e.
