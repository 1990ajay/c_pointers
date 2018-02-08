#include <stdio.h>
#define EXIT_SUCCESS
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#define STDOUT_FILENO

int main (int argc , char * argv []) {
# define STR " Hello world \ n "
write ( STDOUT , STR , strlen ( STR ));
exit ( EXIT_SUCCESS );
}
