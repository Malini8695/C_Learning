/* In case of reading strings, we do not use the & sign in the scanf function. */

#include <stdio.h>

int main()
{
    char name[50];  
    printf("Enter the name : "); 
	scanf("%s", name);  
    printf("Name: %s\n", name);  
    return 0;
}


/*

When passing the whole array to a function (like scanf, printf, or any custom function), you do not need the & because the name of the array itself is the address of the first element.

Example:

int nums[5];
scanf("%d", nums);  // No & because nums points to the first element (nums[0])

************************************************************************************************************************

When accessing individual elements of the array (like nums[i]), you do need the & if you're using functions like scanf, because you're working with a single element, and you need to pass the address of that element.

Example:

int nums[5];
scanf("%d", &nums[i]);  // Need & because nums[i] is just a single variable

*/
