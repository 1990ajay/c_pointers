
#include<stdlib.h>
#include<stdio.h>
// order of O(n2) implementation. Baccha stuff. Poorest algo. 


 int* two_sum(int*x_arr,int arr_s, int target) {
 	int* result;
	result = malloc(sizeof(int) * 2);
	for(int i=0;i<arr_s-1;i++) {
		for(int j=i+1;j<arr_s;j++) {
			if(x_arr[i] + x_arr[j] == target)
			{
				result[0] = i;
				result[1] = j;
				return result;
			}
			else {
			printf("Notfound");
			}
		}
	}
				
 }

int main() {
	int arr_size;
	scanf("%d",&arr_size);

	int target;

	scanf("%d",&target);
	int* ip_arr = malloc(sizeof(int) * arr_size);
	for(int i=0;i<arr_size;i++) {
	scanf("%d",&ip_arr[i]);
}	
	for(int i=0;i<arr_size;i++) {
	printf("%d  \n",ip_arr[i]);
}	
	int* fn_res = two_sum(ip_arr, arr_size, target);	
	
	printf("%d \n", fn_res[0]);

	printf("%d \n", fn_res[1]);
	
	return 0;

}


