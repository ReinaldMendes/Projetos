// pilha.h
#ifndef _PILHA_H_
#define _PILHA_H_

#include <stdio.h>
#include <stdlib.h>

typedef struct _pilha {
    int chave;
    struct _pilha *prox;
} Pilha;

Pilha *alocaNo(void);
int insereNo(Pilha **p, int n);
int removeNo(Pilha **p);
int buscaNo(Pilha **p, int n);
void imprimePilha(Pilha **p);
void concatenaPilhas(Pilha **p1, Pilha **p2);

#endif
