/* NumericPalindrome.C: Determines largest numeric palindrome created by the product of 2 3-digit numbers
 * Name: Thomas Kohut
*/

#include <stdio.h>

//Returns reversed parameter
int reverseProd(int prod) {
    int res = 0;
    //Reverses param
    while(prod != 0) {
        res = res*10+prod%10;
        prod = prod/10;
    }
    return res;
}

//Checks for largest number the results in a palindromic product
int palindromeprod(int a) {
    int res = 0;
    int prod = 0;
    for(int x = 100; x < 1000; x++) {
        prod = a*x;
        //printf("%d, ",prod);
        if(prod == reverseProd(prod)) {
            res = x;
            //printf("%d",res);
        }
    }

    // if (res == 0) {
    //     res = 000;
    // }
    return res;
}

//Main method
int main(void) {
    int b,prod;
    int a = 913;
    //printf("Please enter a number between 100 and 999: ");
    //scanf("%d", &a);

    //Makes sure int is three digits
    if(a < 100|| a > 999) {
        printf("Error: Inputted value exceeds the limits");
        return -1;
    } else {
        b = palindromeprod(a);
        prod = a*b;
        printf("%d, %d, %d\n", a,b,prod);
    }
    return 0;
}