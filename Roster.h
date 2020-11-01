/**Roster.h
 * Header file for Roster.cpp
 **/
#include <string>
#ifndef ROSTERH
#define ROSTERH

//Base class
class Person {
    public: 
        //Person(std::string name, int id);     
        std::string name;
        int id;
};

//Student
class Student: public Person {
    public:
        Student(int id, std::string name, std::string maj, std::string min);
            std::string getid();
            void setmaj(std::string newmaj);
            void setmin(std::string newmin);
            std::string getname() const;
            std::string getmaj() const;
            std::string getmin() const;
            std::string getdata() const;
            std::string getid() const;
    private:
        std::string maj;
        std::string min;  

};

//Professor
class Professor: public Person {
    public:
        std::string getdata() const;
        Professor(int id, std::string name, std::string rank, int publications);
        std::string getrank() const;
        std::string getname() const;
        std::string getid() const;
        int getpublications() const;
        void setrank(std::string newrank) const;
        void setpublications(int newpublications) const;     
    private: 
        std::string rank;
        int publications;
};
#endif