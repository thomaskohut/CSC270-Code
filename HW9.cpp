#include <iostream>
#include <sstream> 
#include <string>
#include "Roster.h"

//Student Constructor
Student::Student(int id, std::string name, std::string maj,std::string min){
     this->id = id;
     this->name = name;
     this->maj = maj;
     this->min = min;
 }

//Getters for Student
std::string Student::getid() const {
    std::stringstream res;
    res << "" << id << "";
    return res.str();
}

std::string Student::getname() const {
    return name;
}

std::string Student::getmaj() const {
    return maj;
}

std::string Student::getmin() const {
    return min;
}

std::string Student::getdata() const {
    std::stringstream res;
    if (min.compare("none") == 0) {
        res << "" << getmaj() << " major " << getname() << " (id " << getid() << ")";
    } else {
    res << "" << getmaj() << " major " << getname() << " (id " << getid() << ") minors in " << getmin() << "";
    }
    return res.str();
}

//Professor Constructor
Professor::Professor(int id, std::string name, std::string rank, int publications) {
    this->id = id;
    this->name = name;
    this->rank = rank;
    this->publications = publications;
}

//Getters for Professor
std::string Professor::getid() const {
    std::stringstream res;
    res << "" << id << "";
    return res.str();
}

std::string Professor::getname() const {
    return name;
}

std::string Professor::getrank() const {
    return rank;
}

int Professor::getpublications() const {
    return publications;
}

std::string Professor::getdata() const {
    std::stringstream res;
    res <<"" << getrank() << " professor " << getname() << " (id " << getid() << ") has " << getpublications() << " publications";
    return res.str();
}

int main() {
    int idmax;
    int pubnum = 0;
    std::string t,e1,e2,e3;
    std::cout << ""; 
    std::cin >> idmax;

    for (int i = 0; i <= idmax; i++) {
        std::cout << "";
        std::cin >> t >> e1 >> e2 >> e3;
        
        if(i == 0) {
            i = 1;
        }
        
        if(t.compare("s") == 0) {    
            Student s(i,e1,e2,e3);
            std::cout << s.getdata() << std::endl;
            
        } else {
            if(t.compare("p") == 0) {
                std::stringstream pubstr(e2);
                pubstr >> pubnum;
                Professor p(i,e1,e3,pubnum);
                std::cout << p.getdata() << std::endl;
                
            } else {
                std::cout << "Invalid Entry" << std::endl;
            }
        }
    }

    return 0;
}