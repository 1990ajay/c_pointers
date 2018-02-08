# Source code to find the largest number 

# Data location would be located at data_aray 

# Read the array till 0 is found. Finding stops when 0 is found 
# %edi - Current position in the array , start with 0
# %ebx - Holds the curent highest number in the array 
# %eax - Hods the current element 


.section .data

data_items:  # These are the data items
.long 10,12,14,2,1,6,0

.section .text

.global _start
_start:
movl $0, %edi #Position in the array
movl data_items(,%edi,4), %eax # Load the first data elem to eax
movl %eax, %ebx #Make the first element the highest number 

loop_start:
cmpl $0,%eax
je loop_exit
incl %edi
movl data_items(,%edi,4), %eax 
cmpl %ebx, %eax 
jle loop_start

mov %eax , %ebx

jmp loop_start

loop_exit:
movl $1 , %eax 
int $0x80

