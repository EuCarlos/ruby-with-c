#include<stdio.h>

// fatorial
int mult(int n){
	if(n==1) return 1;

	return (n * mult(n-1));
}

// To turn this code into an executable Lib, let's use GCC, run in the terminal:
// gcc -c -fPIC mult.c -o mult.o
// gcc -shared mult.o -o mult.so