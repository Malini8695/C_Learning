
/* CODE WITH BUG */

/* The expected output of the following C program is to print the elements in the array. But when actually run, it doesn't do so.*/
/* Find out what's going wrong.*/

/* 
#include<stdio.h>
#define TOTAL_ELEMENTS (sizeof(array) / sizeof(array[0]))
int array[] = {23,34,12,17,204,99,16};

int main()
{
	int d;

	for(d=-1;d <= (TOTAL_ELEMENTS-2);d++)
		printf("%d\n",array[d+1]);

	
return 0;
}
*/

/* The issue in the original program is related to the comparison between signed and unsigned types, which can lead to unexpected behavior. 
 * Specifically, the variable d is an int (signed), while TOTAL_ELEMENTS is of type size_t (unsigned).
 * When you compare d with TOTAL_ELEMENTS - 2, the signed d is implicitly converted to an unsigned type, which can cause issues if d is negative.
*/

/* FIXED CODE */

#include<stdio.h>
#define TOTAL_ELEMENTS (sizeof(array) / sizeof(array[0]))
int array[] = {23,34,12,17,204,99,16};

int main()
{
    int d;

    for(d=-1;d <= (int)(TOTAL_ELEMENTS-2);d++)
        printf("%d\n",array[d+1]);


return 0;
}

