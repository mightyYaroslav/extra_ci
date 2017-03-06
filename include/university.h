#include "list.h"
#include <string.h>

#ifndef EXTRA_CI_UNIVERSITY_H
#define EXTRA_CI_UNIVERSITY_H

typedef struct Teacher {
    char name[20];
    int age;
    char subject[20];
    List * students;
} Teacher;

typedef struct Student {
    char name[20];
    int age;
    char faculty[20];
} Student;

//WARNING:- Memory allocation on heap
Student * csv_to_student(char * csv);

char * student_to_csv(Student * st, char * out);

char ** student_list_to_csv(List * students);

//WARNING:- Memory allocated on heap
List * csv_to_student_list(char ** csv, size_t num_studs);

//Copying an existing list
void teacher_set_student_list(Teacher * t, List * students);

int cmp_student(List * st1, List * st2);

//WARNING:- Memory allocation on heap
List * get_list_of_commons(Teacher * t, List * students);


#endif