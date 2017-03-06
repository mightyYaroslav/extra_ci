#include "university.h"

char * __strrev(char * s) {
    for(size_t i = 0; i < strlen(s) / 2; i++) {
        char t = s[i];
        s[i] = s[strlen(s) - 1 - i];
        s[strlen(s) - 1 - i] = t;
    }
    return s;
}

char * __itoa(int num, char * out) {
    int neg = num < 0;
    size_t i = 0;
    num = abs(num);
    while(num > 0) {
        out[i] = (char) (num % 10 + '0');
        num /= 10;
        i++;
    }
    out[i] = '\0';
    return __strrev(out);
}

char * __escape(char * s, char esc_delim, char with) {
    for(size_t i = 0; i < strlen(s); i++)
        if (s[i] == esc_delim) {
            char with_str[2];
            with_str[0] = with;
            with_str[1] = '\0';

            strcat(s, with_str);
            char tmp[25] = "";
            strcpy(tmp, s);

            strcpy(s, with_str);
            strcat(s, tmp);
            break;
        }
    return s;
}

char * __substr(char * s, size_t index, size_t len, char * res) {
    if(index + len <= strlen(s)) {
        for (size_t i = 0; i < len; i++)
            res[i] = s[index + i];
        res[len] = '\0';
    }
    return res;
}


//WARNING:- Memory allocation on heap
char ** __split(char * s, char delim, char esc, size_t * count) {
    *count = 0;
    for(size_t i = 0; i <= strlen(s); i++) {
        if(s[i] == '"') {
            i++;
            while(s[i] != esc && s[i] != '\0') i++;
        }
        if(s[i] == delim || s[i] == '\0') (*count)++;
    }


    char ** strs = malloc(sizeof(char *) * (*count));
    for(size_t i = 0; i < *count; i++)
        strs[i] = malloc(sizeof(char) * 20);

    size_t ind = 0;
    size_t j = 0;
    for (size_t i = 0; i <= strlen(s); i++) {
        if(s[i] == esc) {
            i++;
            while(s[i] != esc && s[i] != '\0') i++;
            __substr(s, ind + 1, i - ind - 1, strs[j]);
            i += 3;
            ind = i - 1;
            j++;
        }
        if(s[i] == delim || s[i] == '\0') {
            __substr(s, ind, i - ind, strs[j]);
            j++;
            ind = i + 1;
        }
    }
    return strs;
}


//WARNING:- Memory allocation on heap
Student * csv_to_student(char * csv) {
    size_t count = 0;
    Student * st = malloc(sizeof(Student));
    char ** array = __split(csv, ',', '"', &count);
    strcpy(st->name, array[0]);
    st->age = atoi(array[1]);
    strcpy(st->faculty, array[2]);
    return st;
}


char * student_to_csv(Student * st, char * out) {
    strcpy(out, __escape(st->name, ',', '\"'));
    strcat(out, ",");
    char age_str[10];
    __itoa(st->age, age_str);
    strcat(out, age_str);
    strcat(out, ",");
    strcat(out, __escape(st->faculty,',', '\"'));
    return out;
}

char ** student_list_to_csv(List * students) {
    char ** strs = malloc(sizeof(char * ) * List_count(students));

    List * cur = students;
    for(size_t i = 0; cur != NULL; i++, cur=cur->next) {
        strs[i] = malloc(sizeof(char) * 60);
        student_to_csv((Student *) (cur->data), strs[i]);
    }
    return strs;
}

//WARNING:- Memory allocated on heap
List * csv_to_student_list(char ** csv, size_t num_studs) {
    List * students = List_new();
    for(size_t i = 0; i < num_studs; i++)
        List_add(&students, csv_to_student(csv[i]));
    return students;
}

//Copying an existing list
void teacher_set_student_list(Teacher * t, List * students) {
    t->students = List_new();
    List * cur = students;
    while(cur != NULL) {
        List_add(&(t->students), cur->data);
        cur = cur->next;
    }
}

int cmp_student(List * st1, List * st2) {
    return ((Student *)(st1->data))->age == ((Student *)(st2->data))->age &&
           !strcmp(((Student *)(st1->data))->name, ((Student *)(st2->data))->name) &&
           !strcmp(((Student *)(st1->data))->faculty, ((Student *)(st2->data))->faculty);
}

//WARNING:- Memory allocation on heap
List * get_list_of_commons(Teacher * t, List * students) {
    List * res = List_new();
    List * cur_t = t->students;
    while(cur_t != NULL) {
        List * cur_st = students;
        while(cur_st != NULL) {
            if(cmp_student(cur_t, cur_st)) List_add(&res, cur_t->data);
            cur_st = cur_st->next;
        }
        cur_t = cur_t->next;
    }
    return res;
}

