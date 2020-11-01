#include <sstream>
#include <iostream>
#include <fstream>
#include "shapes.h"

Rectangle::Rectangle(float length, float width) {
	try{
	if(length < 0) {
		throw 1;
	} else {
		if(width < 0) {
			throw 2;
		} else {
			this->length = length;
			this->width = width;
		}
	}}

	catch(int num){
		if(num == 1) {
			std::cerr << "Error: Length is negative.";
		} 	else {
				if(num == 2) {
					std::cerr << "Error: Width is negative.";
				} 
			}
	}
}

float Rectangle::getlength() const {
	return length;
}

float Rectangle::getwidth() const {
	return width;
}

float Rectangle::perimeter() const {
	return 2 * length + 2 * width;
}

float Rectangle::area() const {
	return length * width;
}

std::string Rectangle::str() const {
	std::stringstream  out;
	// "A rectangle width sides (3,4)"

	out << "A rectangle width sides (" << length << "," << width << ")";
	return out.str();
}
/******************************/
Square::Square(float side) : Rectangle(side, side) {
	try {
	if(side < 0) {
		throw 3;
	}}
	
	catch(int num) {
		if(num == 3) {
			std::cerr << "Error: Sides is negative.";
		}
	}
}

std::string Square::str() const {
	std::stringstream  out;
	// "A square width sides (3)"

	out << "A square width sides (" << getlength() << ")";
	return out.str();
}

Circle::Circle(float radius) {
	try {
	if(radius < 0) {
		throw 4;
	} else {
		this->radius = radius;
	}}

	catch(int num) {
		if(num == 4) {
			std::cerr << "Error: Radius is negative.";
		}
	}
}

float Circle::getradius() const {
	return radius;
}

float Circle::perimeter() const {
	return 2 * radius * PI;
}

float Circle::area() const {
	return PI * radius * radius;
}

std::string Circle::str() const {
	std::stringstream  out;
	// "A circle width radius (3)"

	out << "A circle width radius (" << radius << ")";
	return out.str();
}