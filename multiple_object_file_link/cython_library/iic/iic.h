#ifndef IIC_H
#define IIC_H

#include <stdio.h>
#include <cstdio>
#pragma once

//----------------------------------------s.
struct mys_iic {
    int size, *array=NULL;
    void my_malloc() {
        array = (int*)malloc(sizeof(int)*size);
    };
    void my_free() {free(array);}
    mys_iic(int Insize) {
        size=Insize;
        my_malloc();
    }
    ~mys_iic() {my_free();}
    void hellow_iic_hpp();
};//--------------------------------------e.

//----------------------------------------s.
inline void mys_iic::hellow_iic_hpp() {
    printf("inline void mys_iic::hellow_iic_hpp();\n");
};//--------------------------------------e.

#endif
