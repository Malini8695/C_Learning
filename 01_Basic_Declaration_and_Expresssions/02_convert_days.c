/*2. Convert days to years, weeks, and days

Write a C program to convert specified days into years, weeks and days.
Note: Ignore leap year.

Test Data :
Number of days : 1329
Expected Output :
Years: 3
Weeks: 33
Days: 3
*/

#include <stdio.h>
void main(){
	int num_of_days ,years , weeks, rem_days; 
	printf("Number of  days: ");
	scanf("%d",&num_of_days);

	//Calculate years	
	years = num_of_days / 365;
	printf("Years : %d\n",years);
	
	//Calculate weeks from the remaining days
	weeks = (num_of_days % 365)/7; //(num_of_days % 365) - gives remaining no.of days
	printf("Weeks : %d\n",weeks);
	
	//Calculate remaining days
	rem_days = (num_of_days %365) % 7 ; 
	printf("Days : %d\n",rem_days);
	
	
}
