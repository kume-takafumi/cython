#ifndef CYTHON_MAIN_H
#define CYTHON_MAIN_H
#include <stdio.h>
#include <stdlib.h>
#include <iostream>
using namespace std;

//----------------------------------s.
typedef void (*cbFuncName)(char *s);
#include "./cython_library_api.h"
//----------------------------------e.

//----------------------------------s.
void cython_main();
#include "./cython_library/iic/iic.h"
typedef void (*cbFuncName_mys_iic)(mys_iic *Indata);
#include "./cython_library/iic/cython_iic_api.h"
//----------------------------------e.

#endif
