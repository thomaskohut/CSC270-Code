/*
 * time_to_sec.c: Converts a given duration of time (hours, minutes, seconds) into seconds
 * Name: Thomas Kohut
 * 
 *  Created on: Jul 20, 2016
 *      Author: leune
 */
#include <stdio.h>

/* Convert a time interval specified in hours, minutes and seconds to
 * seconds.
 * Parameters:
 *     hours, minutes, seconds: input time elements
 * Preconditions:
 *     0 <= minutes < 60
 *     0 <= seconds < 60 
 * Return:
 *     number of seconds in the interval
 */
unsigned int time_to_sec(unsigned int hours, unsigned int minutes,
        unsigned int seconds) {
    return ((hours * 3600) + (minutes * 60) + seconds);
}

/* Print a formatted representation of the calculation
 * Parameters:
 *     hours, minutes, seconds: input time elements
 * Postcondition:
 *     Function will write the calculation to standard output.
 */
void format_seconds(unsigned int hours, unsigned int minutes,
        unsigned int seconds) {
    printf("%u hours, %u minutes and %u seconds is equal to %u seconds.\n", hours, minutes, seconds, time_to_sec(hours, minutes,seconds));
}

int main(void) {
    format_seconds(4, 13, 20);
    format_seconds(8, 0, 0);
    format_seconds(1, 30, 0);
}