// main.c
#include "pilha.h"
#include <stdio.h>

int main(void) {
    Pilha *pilha1 = NULL;
    Pilha *pilha2 = NULL;

    // Inserir elementos na pilha 1
    insereNo(&pilha1, 10);
    insereNo(&pilha1, 20);
    insereNo(&pilha1, 30);

    // Inserir elementos na pilha 2
    insereNo(&pilha2, 5);
    insereNo(&pilha2, 15);
    insereNo(&pilha2, 25);

    printf("Pilha 1:\n");
    imprimePilha(&pilha1);

    printf("\nPilha 2:\n");
    imprimePilha(&pilha2);

    // Concatenar pilha 2 à pilha 1
    concatenaPilhas(&pilha1, &pilha2);

    printf("\nPilha 1 após concatenar com pilha 2:\n");
    imprimePilha(&pilha1);

    // Buscar elemento na pilha 1
    int valorBuscado = 20;
    int indice = buscaNo(&pilha1, valorBuscado);
    if (indice != -1) {
        printf("\nO valor %d foi encontrado na posição %d da Pilha 1.\n", valorBuscado, indice);
    } else {
        printf("\nO valor %d não foi encontrado na Pilha 1.\n", valorBuscado);
    }

    // Remover elementos da pilha 1
    removeNo(&pilha1);
    removeNo(&pilha1);

    printf("\nPilha 1 após remoção:\n");
    imprimePilha(&pilha1);

    return 0;
}
