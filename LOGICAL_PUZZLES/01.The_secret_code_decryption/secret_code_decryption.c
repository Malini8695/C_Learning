/*1. The Secret Code Decryption

 * Scenario: "You've found an encrypted message, but the code is simple. 
 * Each letter in the message has been shifted by a certain number in the alphabet. 
 * Your task is to decrypt it."

 * Task: Write a C program that takes an encrypted message (using a Caesar cipher) and a shift value, 
 * then decrypts the message by shifting each character in the reverse direction.

 * Hint: Think about ASCII values, and how shifting works in a circular manner (e.g., shifting "z" to "a").

 * Example: Encrypted message: "Dpef!", Shift: 1 → Decrypted message: "Code!"

 */
/* Ref : 
 * formula for decryption using casar cipher     	 :  https://www.naukri.com/code360/library/caesar-cipher
 * program to  get string from user input 			 :  https://www.log2base2.com/C/string/get-string-input-from-user-in-c.html 
													    https://www.tutorialspoint.com/c_standard_library/c_function_fgets.htm
 * program to extract the characters from the string :  https://www.geeksforgeeks.org/c-program-to-extract-characters-from-a-string/
 * program to allocate dynamic memory 				 : 	https://www.geeksforgeeks.org/dynamic-memory-allocation-in-c-using-malloc-calloc-free-and-realloc/
 */

#include<stdio.h>
int main(){
	char encrypted_msg[50];
	printf("\nEnter the Encrypted message : ");
	fgets(encrypted_msg,sizeof(encrypted_msg),stdin);
	printf("\nEnter the number of shifts  : ");
	return  0;
}

