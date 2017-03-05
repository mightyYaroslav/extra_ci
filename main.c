//
// Created by Yaroslav Bay on 05.03.17.
//
#include <stdio.h>
#include <stdlib.h>
#include <check.h>

#include "university.h"

#define NUM_OF_STUDENTS 3
char strs[NUM_OF_STUDENTS][50] = {"\"Anny,Doe\",23,FICT",
                                  "John,26,FAM",
                                  "Rick,25,\"Famous,faculty\""};

START_TEST (str_student_to_csv) {
    char buf[60] = "";

    for(int i = 0; i < NUM_OF_STUDENTS; i++)
        ck_assert_str_eq(strs[i], student_to_csv(csv_to_student(strs[i]),buf));
}
END_TEST


START_TEST (void_teacher_set_students_list) {
    Teacher t;
    char ** dyn_strs = malloc(sizeof(char *) * NUM_OF_STUDENTS);
    for(int i = 0; i < NUM_OF_STUDENTS; i++) {
        dyn_strs[i] = malloc(sizeof(char) * 50);
        strcpy(dyn_strs[i], strs[i]);
    }

    List * st_list = csv_to_student_list(dyn_strs, NUM_OF_STUDENTS);
    teacher_set_student_list(&t, st_list);
    char **res = student_list_to_csv(t.students);
    for (int i = 0; i < NUM_OF_STUDENTS; ++i)
        ck_assert_str_eq(res[i], strs[i]);

    List_free(t.students);
    List_free(st_list);
    for (int i = 0; i < NUM_OF_STUDENTS; ++i)
        free(dyn_strs[i]);
    free(dyn_strs);

}
END_TEST

START_TEST (List_get_list_of_commons) {
    Teacher t;
    char ** dyn_strs = malloc(sizeof(char *) * (NUM_OF_STUDENTS + 1));
    for(int i = 0; i < NUM_OF_STUDENTS; i++) {
        dyn_strs[i] = malloc(sizeof(char) * 50);
        strcpy(dyn_strs[i], strs[i]);
    }


    List * st_list1 = csv_to_student_list(dyn_strs, NUM_OF_STUDENTS);
    teacher_set_student_list(&t, st_list1);

    dyn_strs[NUM_OF_STUDENTS] = malloc(sizeof(char) * 50);
    strcpy(dyn_strs[NUM_OF_STUDENTS], "Fellow,34,FEL");
    List * st_list2 = csv_to_student_list(dyn_strs, NUM_OF_STUDENTS + 1);

    char ** res = student_list_to_csv(get_list_of_commons(&t, st_list2));

    for (int i = 0; i < NUM_OF_STUDENTS; ++i)
        ck_assert_str_eq(res[i], strs[i]);


    List_free(t.students);
    List_free(st_list1);
    List_free(st_list2);
    for (int i = 0; i < NUM_OF_STUDENTS; ++i)
        free(dyn_strs[i]);
    free(dyn_strs);
}
END_TEST

Suite * test_suite() {
    Suite * s = suite_create("Testing convertion between string and struct");
    TCase * tc_sample;

    tc_sample = tcase_create("Student or There and Back Again");
    tcase_add_test(tc_sample, str_student_to_csv);
    tcase_add_test(tc_sample, void_teacher_set_students_list);
    tcase_add_test(tc_sample, List_get_list_of_commons);

    suite_add_tcase(s, tc_sample);
    return s;
}

int main(int argc, char * argv[]) {
    Suite * s = test_suite();
    SRunner * sr = srunner_create(s);
    srunner_set_fork_status(sr, CK_NOFORK);

    srunner_run_all(sr, CK_VERBOSE);

    int tests_failed = srunner_ntests_failed(sr);
    srunner_free(sr);
    return tests_failed;
}

