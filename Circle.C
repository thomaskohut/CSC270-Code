/*Circle.C: Calculates diameter, circumference, and area of a circle.
* Name: Thomas Kohut
*/

#include <stdio.h>
#include <math.h>
#define PI 3.1415926

/* Calculation methods */
float calcDiameter(float rad) {
    return (2*rad);
}

float calcCircumference(float rad) {
    return (2 * PI * rad);
}

float calcArea (float rad) {
    return(PI * pow(rad,2));
}

/* Main method */
int main(void) {
    float rad;

/* Processes user input */
    printf("Enter radius: ");
    scanf("%f",&rad);

/* Determines what to do based on if input is valid or not */
    if (rad > 0.0) {
        float diam = calcDiameter(rad);
        float circumf = calcCircumference(rad);
        float area = calcArea(rad);

    printf("A circle with radius %.3f:\n\tDiameter: %.3f\n\tArea: %.3f\n\tCircumference: %.3f\n", rad, diam, area, circumf);
    } 
    else {
        printf("Invalid radius. Must be greater than zero.\n");
        return -1;
    }
    return 0;
}