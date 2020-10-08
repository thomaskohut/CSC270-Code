#include <iostream> // Allows for input/output

//Adds 2 ints
int main() {
    std::cout << "Enter First Integer: "; //prompt for input
    int num1;
    std::cin >> num1; //read first integer from user into num1

    std::cout << "Enter First Integer: "; //prompt for input
    int num2;
    std::cin >> num2; //read second integer from user into num1

    int sum = num1+num2;
    std::cout << "Sum is " << sum << std::endl; //prints sum, ends line
}