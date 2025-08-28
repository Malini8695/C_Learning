/*3. Find the maximum of three integers

Write a C program that accepts three integers and finds the maximum of three.
Test Data :
Input the first integer: 25
Input the second integer: 35
Input the third integer: 15
Expected Output:
Maximum value of three integers: 35
*/

#include<stdio.h>
void main(){
	
	int first_integer, second_integer, third_integer;
	
	//Prompt the user to enter the integers and read it 
	printf("Input the first integer  : ");
	scanf("%d",&first_integer);
	
	printf("Input the second integer : ");
	scanf("%d",&second_integer);
	
	printf("Input the third integer  : ");
	scanf("%d",&third_integer);
	
	
	//Compare the three and find the maximum 
	if ((first_integer > second_integer ) && (first_integer > third_integer))
		printf("Maximum value of three integers : %d\n",first_integer);
	
	else if ((second_integer > first_integer) && (second_integer > third_integer))
		printf("Maximum value of three integers : %d\n",second_integer);
	else 
		printf("Maximum value of three integers : %d\n",third_integer);
	
}	
