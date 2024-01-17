#ifndef _H_AGENDA_
#define _H_AGENDA_

#include<stdio.h>
#include<stdlib.h>
#include <string.h>

typedef struct _contato{
    int cpf;
    char nome [40];
    struct _contato *prox;
}Contato;

Contato * novoContato(void);
void imprimeContato(Contato **agenda);
int insereContatoPilha(Contato **agenda);
int removeContatoPilha(Contato **agenda);

#endif
