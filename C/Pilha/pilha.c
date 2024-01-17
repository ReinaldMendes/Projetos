// pilha.c
#include "pilha.h"

Pilha *alocaNo(void) {
    Pilha *novo = (Pilha *)malloc(sizeof(Pilha));
    if (novo == NULL) {
        perror("Erro na alocação de nó");
        return NULL;
    }

    novo->chave = -1;
    novo->prox = NULL;

    return novo;
}

int insereNo(Pilha **p, int n) {
    Pilha *novo = alocaNo();
    if (novo == NULL)
        return -1;

    novo->chave = n;
    if (*p == NULL) {
        *p = novo;
    } else {
        novo->prox = *p;
        *p = novo;
    }

    return 0;
}

int removeNo(Pilha **p) {
    if (*p == NULL)
        return -1;

    Pilha *aux = *p;
    *p = (*p)->prox;
    free(aux);

    return 0;
}

int buscaNo(Pilha **p, int n) {
    int indice = 0;
    Pilha *aux = *p;

    while (aux != NULL) {
        if (aux->chave == n)
            return indice;

        aux = aux->prox;
        indice++;
    }

    return -1;
}

void imprimePilha(Pilha **p) {
    if (*p == NULL) {
        printf("Pilha vazia!\n");
        return;
    }

    Pilha *aux = *p;

    while (aux != NULL) {
        printf("%d\n", aux->chave);
        aux = aux->prox;
    }
}

void concatenaPilhas(Pilha **p1, Pilha **p2) {
    if (*p2 == NULL)
        return;

    Pilha *aux = *p2;
    while (aux->prox != NULL)
        aux = aux->prox;

    aux->prox = *p1;
    *p1 = *p2;
    *p2 = NULL;
}
