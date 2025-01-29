/*  #include <stdio.h>
  #define f(a,b) a##b
  #define g(a)   #a
  #define h(a) g(a)

  int main()
  {
          printf("%s\n",h(f(1,2)));
          printf("%s\n",g(f(1,2)));
          return 0;
  }
Just by looking at the program one "might" expect the output to be, the same for both the printf statements. But on running the program you get it as:
bash$ ./a.out
12
f(1,2)

Why is it so?
*/

/*
 Solution Ref : https://www.geeksforgeeks.org/stringizing-and-token-pasting-operators-in-c/ 
*/


/* LOGIC BEHIND THIS CODE */

/* #  - STRINGIZING OPERATOR 
   ## - TOKEN PASTING OPERATOR */
#include <stdio.h>

#define f(a,b) a##b     // Concatenate 'a' and 'b' (e.g., f(1, 2) becomes 12)
#define g(a)   #a       // Stringify 'a' (e.g., g(12) becomes "12")
#define h(a)   g(a)     // Call g(a), so h(a) will stringify its argument

int main()
{
    // First printf
    // h(f(1, 2)) expands as follows:
    // h(f(1, 2)) -> g(f(1, 2))   // h(a) is defined as g(a)
    // g(f(1, 2)) -> g(12)        // f(1, 2) is expanded to 12 (concatenation of 1 and 2)
    // g(12) -> "12"              // g(a) stringifies its argument
    printf("%s\n", h(f(1, 2)));  // This prints "12"
    
    // Second printf
    // g(f(1, 2)) expands as follows:
    // g(f(1, 2)) -> g(f(1, 2))   // g(a) is defined as #a, no evaluation of f(1, 2) yet
    // g(f(1, 2)) -> "f(1, 2)"    // g(a) stringifies the literal 'f(1, 2)' without evaluating it
    printf("%s\n", g(f(1, 2)));  // This prints "f(1, 2)"
    
    return 0;
}

