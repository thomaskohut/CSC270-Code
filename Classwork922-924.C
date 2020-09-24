#include <stdio.h>
#include <string.h>
#include "Classwork922-924.H"

#define SIZE 8
#define s2 80

//9/22
int exercise1(void) {
const int PI[10] = {3, 1, 4, 1, 5, 9, 2, 6, 5, 3};
printf("The 3th digit of PI is %d.\n", PI[2]);
return 0;
}

int exercise2(void) {
    int c[5]; //Initializing an array c
    for(size_t i = 0; i < 5; i++) {
        c[i] = 2;
    }
    
    printf("%s%13s\n", "Element", "value");
    
    for(size_t i = 0; i < 5; i++) {
        printf("%7u%13d\n", i, c[i]);
    }
}

int exercise3(void) {
    int c[6] = {3, 11, 4, 1, 5, 7};
    printf("%s%13s%17s\n", "Element", "value", "Histogram");

    for(size_t i = 0; i< 5 ; i++) {
        printf("%7u%13d%8s", i, c[i], ""); 
        for(int j = 1; j <= c[i]; j++) {
            printf("%s", ".");
        }
    
    puts(""); // end a histogram bar with a newline
    }
}

void bubbleSort(unsigned int a[], int size) {
    for(unsigned int pass = 1; pass < size; pass++) {
        //loop to control num of comparison per pass
        for(int i = 0; i < SIZE-1; i++) {
            //compare adjacent elements and swap if first element greater than second
            if(a[i] > a[i+1]) {
                int hold = a[i];
                a[i] = a[i+1];
                a[i+1] = hold;
            }
        }
    }
}

int exercise4() {
    unsigned int c[] = {3,11,4,1,5,7,2,1};
    printf("Data in original order");

    //output original arr
    for(size_t i = 0; i < SIZE; i++) {
        printf("%4d", c[i]);
    }
    bubbleSort(c,SIZE);

    printf("\nData items in ascending order");
    
    //out sorted arr
    for(int i=0; i < SIZE; i++) {
        printf("%4d", c[i]);
    }
    printf("\n");
}

//9/24
int method1(void) {
    char strA[] = "Hello, World!";
    char strB[] = "Hello, World!";

    printf("String A: %s - %p\n", strA, strA);
    printf("String B: %s - %p\n", strB, strB);
    printf("%The same.\n",(strA == strB) ? "T" : "not T");
    
    return 0;
}

int method2(void) {
    char stra[s2] = "Apples";
    char strb[s2] = "Oranges";

    printf("%s and %s are the same.\n", stra, strb, strncmp(stra,strb,s2) == 0 ? " " : " not ");
    
    return 0;
}

int method3(void) {
    char buf[s2];
    float temp;
    char unit;

    setbuf(stdout,NULL);

    while(strncmp(buf,"quit",4) !=0) {
        printf("enter 'quit' to stop or enter a new temperature(e.g. 65F):");
        scanf("%s",buf);

        if(sscanf(buf, "%f%c", &temp, &unit) == 2) {
            printf("Temperature: %0.2f %c\n", temp, unit);
        } else if (strncmp(buf,"quit",4) != 0) {
            printf("Invalid input.\n");
        }
    }
    printf("Goodbye.\n");
    return 0;
}

int main(void) {
    exercise1();
    exercise2();
    exercise3();
    exercise4();

    method1();
    method2();
    method3();
}