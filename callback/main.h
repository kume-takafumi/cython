#ifndef MAIN_H
#define MAIN_H
#include <stdio.h>

void callback1(char *s);
void callback2(char *s);
typedef void (*cbFuncName)(char *s);

#endif