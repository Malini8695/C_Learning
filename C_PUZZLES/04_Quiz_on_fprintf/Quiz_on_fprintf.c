/* The following program doesn't "seem" to print "hello-out". (Try executing it) */


#include <stdio.h>
#include <unistd.h>
int main()
{
	while(1)
	{
		fprintf(stdout,"hello-out");
		fprintf(stderr,"hello-err");
		sleep(1);
	}
	return 0;
}


/* What could be the reason? */

/*
Soln Ref :
https://support.tetcos.com/support/solutions/articles/14000051594-how-to-use-fprintf-with-stderr-stdout-and-printf-statements-in-netsim- 
https://www.geeksforgeeks.org/use-fflushstdin-c/
*/

/* LOGIC BEHIND THIS */

/*stdout is line-buffered (waiting for a newline or buffer to fill before flushing).
stderr is unbuffered (output is displayed immediately).
By forcing stdout to flush (either by adding a newline or calling fflush(stdout)), you ensure that the "hello-out" message appears as expected, alongside "hello-err".*/

/* IF I WANT TO PRINT BOTH */

/* SOLN 1 */
/*
#include <stdio.h>
#include <unistd.h>
int main()
{
    while(1)
    {
        fprintf(stdout,"hello-out\n");
        fprintf(stderr,"hello-err");
        sleep(1);
    }
    return 0;
}
*/

/* SOLN 2 */

/*
#include <stdio.h>
#include <unistd.h>
int main()
{
    while(1)
    {
        fprintf(stdout,"hello-out");
		fflush(stdout);
        fprintf(stderr,"hello-err");
        sleep(1);
    }
    return 0;
}
*/
