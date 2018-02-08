#include <stdio.h>

void main() {
	int x = 10;
	printf( " The value of x before the pointer assignment is %d \n",x);
	int* px   =  &x;
	printf( " The value of x pointed by the pointer is is %d \n",*px);
	B(&px);
	
	printf( " The value of x after increment in main is  %d \n",x);

}


void B(int** q) {
	**q = **q + 10;
	
	printf( " The value of x inside the function B is %d \n",**q);


	}

//Passing in a reference of the pointer p 

