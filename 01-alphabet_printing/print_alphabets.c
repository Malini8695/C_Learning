/* C program to print the alphabets from A to Z */

#include<stdio.h>
int main(){
	
	// to print from A to Z 
	for(char current_alphabet ='A'; current_alphabet <='Z'; current_alphabet++){
		printf("%c\t",current_alphabet);
	}
	printf("\n\n");

	//to print from a to z 
	for(char current_alphabet ='a'; current_alphabet <='z'; current_alphabet++){
        printf("%c\t",current_alphabet);
    }
	printf("\n\n");

	//to print in reverse order - from Z to A 
	for(char current_alphabet ='Z'; current_alphabet >='A'; current_alphabet--){
		printf("%c\t",current_alphabet);
    }
	printf("\n\n");

	//to print in reverse order - from z to a
	for(char current_alphabet ='z'; current_alphabet >='a'; current_alphabet--){
		printf("%c\t",current_alphabet);
	}
	printf("\n\n");
	return 0;
}
