#include <stdio.h>

// Function declaration: This function will get input from the user (the year).
int get_input_from_user();

// Function declaration: This function checks if the provided year is a leap year or not.
void check_leap_year_or_not(int year_to_check);

// Function to get input from the user
int get_input_from_user() {
    int year_from_user;
    
    // Prompting the user to enter a year for the leap year check.
    printf("Enter the year to check leap year:\n");
    
    // Reading the user's input (the year) and storing it in 'year_from_user'.
    scanf("%d", &year_from_user);
    
    // Returning the input year to the main function for further processing.
    return year_from_user;
}

// Function to check if the given year is a leap year or not.
void check_leap_year_or_not(int year_to_check) {
    // Leap year check logic:
    // 1. If the year is divisible by 4 but not divisible by 100, or
    // 2. If the year is divisible by 400, then it is a leap year.
    if ((year_to_check % 4 == 0 && year_to_check % 100 != 0) || (year_to_check % 400 == 0)) {
        // If the year satisfies the leap year condition, print this message.
        printf("The year %d is a leap year\n", year_to_check);
    } else {
        // If the year does not satisfy the leap year condition, print this message.
        printf("The year %d is not a leap year\n", year_to_check);
    }
}

// Main function where the program starts execution.
int main() {
    // Function call to get the year input from the user and store it in 'year_to_check'.
    int year_to_check = get_input_from_user();
    
    // Function call to check whether the given year is a leap year or not.
    check_leap_year_or_not(year_to_check);
    
    // Return 0 to indicate the program executed successfully.
    return 0;
}



/*
    Sample input/output for this function:
    
    Input: 2024
    Logic:
    2024 is divisible by 4 but not divisible by 100, so it is a leap year.
    
    Output:
    The year 2024 is a leap year
    
    Input: 1900
    Logic:
    1900 is divisible by 100 but not by 400, so it is not a leap year.
    
    Output:
    The year 1900 is not a leap year
    
    Input: 2000
    Logic:
    2000 is divisible by 400, so it is a leap year.
    
    Output:
    The year 2000 is a leap year
 */
