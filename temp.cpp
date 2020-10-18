/**temp.cpp
 * Converts Fahrenheit to Kelvin and Celsius.
 **/

#include <iostream>
#include "temp.h"

Temperature::Temperature(float deg, int sys) {
    //Celsius
    if(sys == 1) {
        celsius = deg;
        fahrenheit = (celsius * 1.8) + 32;
        kelvin = celsius + 273.15;
    }
    
    //Fahrenheit
    if(sys == 2){
        fahrenheit = deg;
        celsius = (fahrenheit-32)/1.8;
        kelvin = celsius + 273.15;
    }

    //Kelvin
    if(sys == 3){
        kelvin = deg;
        celsius = kelvin-273.15;
        fahrenheit = celsius*1.8+32;
    }
}

float Temperature::getCelsius() {
    return celsius;
}

float Temperature::getFahrenheit() {
    return fahrenheit;
}

float Temperature::getKelvin() {
    return kelvin;
}

int main() {
    float degtemp = 68.0;

    std::cout <<"Fahrenheit: " <<degtemp <<std::endl;
    
    Temperature t(degtemp, Temperature::F);
    std::cout <<"in Celsius: " <<t.getCelsius() <<std::endl;
    std::cout <<"in Kelvin: " <<t.getKelvin() <<std::endl;
}
