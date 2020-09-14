//For exercises done in class for classes 9/8/2020 - 9/10/2020
#include <stdio.h>

//For triangles
# define BASE 4
# define HEIGHT 3

int exercise1(void) {
    puts("Hello in puts");
    printf("Hello in printf");
    //fprintf(stdout, "%s/n", "Hello in fprintf");
    return 0;
}

int exercise2(void) {
    int a = 1;
    char b = 'G';
    float c = 3.14;
    
    printf("Welcome to Week 2 Class!\n");

    //printing the variables defined above along with their sizes
    printf("Hey, I am character. My value is %c and" " my size is %lu byte.\n", b, sizeof(b));
    printf("Hey, I am an integer. My value is %d and " "my size is %lu bytes.\n", a, sizeof(a));
    printf("Hey, I am a double variable." " My value is %lf and my size is %lu bytes.\n", c, sizeof(c));
    printf("Bye! See you soon. :)\n"); 
    return 0;
}

int exercise3(void) {
    int a = 3, b = 5, c;
    c = a + b;
    printf("value of c : %d \n", c);

    // the variable x has the value 'E'.
    char x = 'E';
    char y = 70;

    //ASCII code
    printf("x = %c, x = %d\n", x, x);
    printf("y = %c, y = %d\n", y, y);

    char z = y + a;
    printf("z = %c, z = %d\n", z, z );
    
    return 0;
}

int exercise4(void) {
    float f = 70.0/3.0;
    double d = 70.0/3.0;

    printf("value of f : %f , or %0.4f\n", f, f);
    printf("value of d : %lf\n", d);
    return 0;
}

int exercise5(void) {
    // define an int called 'a' and initialize it to 0.
    int a = 0;
    int b = 0;
    float c = 0.0;
    
    // read an integer from standard input. Note the ampersand before 'a'
    printf("Enter a integer number: ");
    scanf("%d", &a);
    
    // read one integer and one float from standard input.
    printf("Enter one integer and one float: ");
    scanf("%d %f", &b, &c);
    printf("You input integer = %d and float = %f \n", b, c);
    
    // print the sum of a and b
    printf("%d + %d = %d\n", a, b, a + b);
}

//Triangle Program
int exercise6(void) {
float b,h;
float area;

//Base
printf("Enter Base: ");
scanf("%f", &b);
//Height
printf("Enter Height: ");
scanf("%f",&h);

//Calculation
area = b*h/2;

//Result
printf("A triangle with base %f and height %f has a area of %f. \n", b, h, area);
return 0;
}

int exercise7(void) {
    int base,b2,hypo,h2,perp,p2,pb;

    //Base
    printf("Enter the Base: \n");
    scanf("%d", &base);
    b2 = base*base;

    //Hypoteneuse
    printf("Enter the Hypoteneuse: \n");
    scanf("%d", &hypo);
    h2 = hypo*hypo;

    //Perpendicular
    printf("Enter the Perpendicular: \n");
    scanf("%d", &perp);
    p2 = perp*perp;
    pb = p2+b2;

    if (h2 < pb) {
        printf("The triangle is acute.");
    }
    else {
        if (h2 == pb) {
            printf("The triangle is right.");
        }
        else {
            if(h2 > pb) {
                printf("The triangle is obtuse.");
            }
        }      
    }
    return 0;
}


int main(void) {
    //9/8
    // exercise1();
    // exercise2();
    // exercise3();
    // exercise4();
    // exercise5();
    // exercise6();
    
    //9/10
    exercise7();
    return 0;
}