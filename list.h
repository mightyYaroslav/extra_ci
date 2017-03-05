#include <stdlib.h>

#ifndef list_h
#define list_h

typedef struct List {
    void * data;
    struct List * next;
} List;

List * List_new();
void List_free(List * phead);

void List_add(List ** phead, void * val);
void List_pop(List ** phead);

void List_insert(List ** phead, size_t index, void * val);
void List_remove(List ** phead, size_t index);

size_t List_count(List * phead);

void List_sort(List ** phead, int (*cmp)(List *, List*));

#endif
