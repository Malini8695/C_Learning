/*
Ref : https://www.youtube.com/watch?v=VRcJpUOKRt8&t=1761s 
Ref : https://stackoverflow.com/questions/478694/what-is-the-easiest-algorithm-to-find-the-day-of-week-of-day-zero-of-a-given-yea
*/
#include <stdio.h>

/* Function to get the first day of the week */
int get_first_day_of_week(int year)
{
        int day;

        /* Zeller's algorithm to calculate the first day of the week for the given year */
        day = (((year - 1) * 365) + ((year - 1) / 4) - ((year - 1) / 100) + ((year) / 400) + 1) % 7;
        
        /* Return the day of the week (0 = Saturday, 1 = Sunday, ..., 6 = Friday) */
        return day;
}

/* Main function: Starts the calendar application */
int main()
{
        int input_year, current_weekday_count = 0, first_day_of_month;

        printf("Enter your desired year : ");
        scanf("%d", &input_year);

        char *month_names[] = {"January", "February", "March", "April", "May", "June","July", "August", "September", "October", "November", "December"};
        int days_in_month[] = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

		/* Check for leap year - if leap year feb set to  29 days */
		if ((input_year % 4 == 0 && input_year % 100 != 0) || (input_year % 400 == 0))
        {
                days_in_month[1] = 29; 
        }

		/* Function call to get the first day of the week */
        first_day_of_month = get_first_day_of_week(input_year);

        /* Loop to print the calendar for all 12 months*/
        for (int month = 0; month < 12; month++)
        {
                int days_in_current_month = days_in_month[month];

                printf("\n********************%s***********************\n", month_names[month]);
                printf("\n\nSun\tMon\tTue\tWed\tThu\tFri\tSat\n\n");

                /* Loop to print spaces before the first day of the month */
                for (current_weekday_count = 0; current_weekday_count < first_day_of_month; current_weekday_count++)
                {
                        printf("\t"); 
                }

                /* Loop to print the days of the month */
                for (int day = 1; day <= days_in_current_month; day++)
                {
                        printf("%d\t", day); 
                        current_weekday_count++;  

                        /* Move to next line (new week) */
                        if (current_weekday_count > 6)
                        {
                                printf("\n");  
                                current_weekday_count = 0; 
                        }

                        // Update the first day for the next month
                        first_day_of_month = current_weekday_count;
                }

                printf("\n\n");
        }

        return 0;
}

