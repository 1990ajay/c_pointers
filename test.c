#include <stdio.h>
#include <stdlib.h>


int main () {
	int (*p)[10];
	printf("%d",sizeof(*p));
	

	int a[2] = {1,2};
	printf("%d",(&a+1));
	
	return 0;

}
