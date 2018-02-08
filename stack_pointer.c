#include <stdio.h>

// This file is to view the stack frame in gdb 
// Command - bt, info frame , x/100x $sp
int main() {
	int i=10;
	printf("The value of i is %d",i);

	return 0;
}


