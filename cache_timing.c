#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#include <time.h>

clock_t start_time,end_time;
// L1d cache:             32K
//L1i cache:             32K
// L2 cache:              1024K
// L3 cache:              33792K


int main(int argc, int** argv) {

// Set the buffer size to operate on 

int buffer = atoi(argv[1]);
int bufferKB = buffer*1024;
int bufferMB = buffer*1024*1024;
int bufferGB = bufferMB*1024;

// Cache line size is fixed
int cache_line_sz = 64;

// Allocate Mem in the heap 

char *start = malloc(sizeof(char) * bufferKB);

start_time = clock();
// Touch Bytes  
for(int i=0 ; i<bufferKB ; i=i+64) {

	start[i] = i;
	//printf("%d \n", i);
	//sleep(1);

}
end_time = clock();
sleep(10);
double time_diff = (double)(end_time - start_time)/ CLOCKS_PER_SEC;

printf("Total time takes to touch %d bytes is %ld : ", bufferKB,time_diff);
return 0;

}




