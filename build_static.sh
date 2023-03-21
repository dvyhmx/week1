#!/bin/bash
gcc -c main.c -o main.o
gcc -c static/add.c -o static/add.o
gcc -c shared/answer.c -o static/answer.o
ar rcs static/libadd.a static/add.o static/answer.o
gcc main.o -Lstatic -ladd -o static/main_static
./static/main_static