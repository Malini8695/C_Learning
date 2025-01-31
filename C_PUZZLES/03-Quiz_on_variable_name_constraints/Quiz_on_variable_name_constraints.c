/* CODE WITH BUG */
/*#include<stdio.h>

void OS_Solaris_print()
{
        printf("Solaris - Sun Microsystems\n");
}

void OS_Windows_print()
{
        printf("Windows - Microsoft\n");

}
void OS_HP-UX_print()
{
        printf("HP-UX - Hewlett Packard\n");
}

int main()
{
        int num;
        printf("Enter the number (1-3):\n");
        scanf("%d",&num);
        switch(num)
        {
                case 1:
                        OS_Solaris_print();
                        break;
                case 2:
                        OS_Windows_print();
                        break;
                case 3:
                        OS_HP-UX_print();
                        break;
                default:
                        printf("Hmm! only 1-3 :-)\n");
                        break;
        }

        return 0;
}*/

/* ISSUE IN THE CODE */

/* 
 * The issue in your code is with the function name OS_HP-UX_print(). In C, hyphens (-) are not allowed in function name * so OS_HP-UX_print() is an invalid function name.
*/

/* FIXED CODE */

#include<stdio.h>

void OS_Solaris_print()
{
        printf("Solaris - Sun Microsystems\n");
}

void OS_Windows_print()
{
        printf("Windows - Microsoft\n");

}
void OS_HP_UX_print()
{
        printf("HP-UX - Hewlett Packard\n");
}

int main()
{
        int num;
        printf("Enter the number (1-3):\n");
        scanf("%d",&num);
        switch(num)
        {
                case 1:
                        OS_Solaris_print();
                        break;
                case 2:
                        OS_Windows_print();
                        break;
                case 3:
                        OS_HP_UX_print();
                        break;
                default:
                        printf("Hmm! only 1-3 :-)\n");
                        break;
        }

        return 0;
}
