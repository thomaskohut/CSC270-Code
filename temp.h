/**Temp.h
 * Header file for temp.cpp
 **/

#ifndef TEMPERATUREH
#define TEMPERATUREH

class Temperature {
    public:
        static const int C = 1;
        static const int F = 2;
        static const int K = 3;

        Temperature(float deg, int sys);
        float getCelsius();
        float getFahrenheit();
        float getKelvin();

        private: 
            float celsius;
            float fahrenheit;
            float kelvin;
};
#endif