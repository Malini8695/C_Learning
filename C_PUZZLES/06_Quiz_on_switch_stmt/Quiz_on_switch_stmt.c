/*  #include<stdio.h>
  int main()
  {
          int a=10;
          switch(a)
          {
                  case '1':
                      printf("ONE\n");
                      break;
                  case '2':
                      printf("TWO\n");
                      break;
                  defa1ut:
                      printf("NONE\n");
          }
          return 0;
  }
If you expect the output of the above program to be NONE, I would request you to check it out!!
*/

/* Ref for switch statement : 
		https://www.geeksforgeeks.org/c-switch-statement/
*/

#include<stdio.h>
int main()
{
	int a=10;
	switch(a)
	{
		case '1':
			printf("ONE\n");
			break;
		case '2':
			printf("TWO\n");
			break;
		default: // the spelling of default is wrong in the above code 
			printf("NONE\n");
	}
	return 0;
}
