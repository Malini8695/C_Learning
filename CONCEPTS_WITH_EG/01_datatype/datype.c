/*When the basic data type is omitted from a declaration, then automatically type int is assumed.
For example,
long var; //int is implied
*/

#include<stdio.h>
int main(){
	long num=10; //even if i give long num =10.9; //result will be 10
	printf("Num : %ld",num);
	return 0;
}

