/* Ctempconversion.C: Converts user temperature inputs to other temperature types.
 *  Name: Thomas Kohut
*/

#include <stdio.h>

/* Celsius Conversions */
float ctof (float c) {
    float res = (c * 1.8) + 32;
    return res;
}

float ctok (float c) {
    float res = c + 273.15;
    return res;
}

/* Fahrenheit Conversions */
float ftoc (float f) {
    float res = (f-32)/1.8;
    return res;
}

float ftok (float f) {
   float res =  ftoc(f) + 273.15;
   return res;
}

/* Kelvin Conversions */
float ktof (float k) {
    float res = (k - 273.15) * 1.8 + 32;
    return res;
}

float ktoc (float k) {
    float res = k-273.15;
    return res;
}

/* Main Method */
int main(void){
    float temp = 0.0;
    char temptype = 'a';

   printf("Enter input temperature: ");
   scanf("%f %c,",&temp,&temptype);
    
    /*If statements for each temp type*/
    if (temptype == 'f' || temptype == 'F') {
        float cconv = ftoc(temp);
        float kconv = ftok(temp);

        printf("%.2f Fahrenheit converts to:\n\t%.2f C\n\t%.2f K\n",temp,cconv,kconv);
    }
    else {
        if (temptype == 'c' || temptype == 'C') {
            float fconv = ctof(temp);
            float kconv = ctok(temp);

            printf("%.2f Celsius converts to:\n\t%.2f F\n\t%.2f K\n",temp,fconv,kconv);
        }
        else {
            if(temptype == 'k' || temptype == 'K') {
                float fconv = ktof(temp);
                float cconv = ktoc(temp);
                printf("%.2f Kelvin converts to:\n\t%.2f F\n\t%.2f C\n",temp,fconv,cconv);
            }
            /* If invalid character entered */
            else {
                printf("Invalid temperature scale\n");
                return -1;
            }
        }
    }        
    return 0;
}