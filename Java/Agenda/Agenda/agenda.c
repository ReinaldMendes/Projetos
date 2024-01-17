#include "agenda.h"

Contato * novoContato(void){
    Contato *novo = (Contato *) malloc (sizeof(Contato));
    if (novo == NULL){
    puts("novoContato(): erro na alocacao de contato");
    return NULL;
}
    printf("Digite seu nome: \n");
    scanf("%[^\n]s", novo->nome);
    printf("Digite seu cpf: \n");
    scanf("%d", &novo->cpf);
    getchar();
    novo->prox = NULL;

    return novo;
};
void imprimeContato(Contato **agenda){
    Contato *aux = *agenda;
    while (aux!= NULL){
        printf("Nome: %s\n", (aux)->nome);
        printf("CPF: %d \n\n", (aux)->cpf);

        (aux) = (aux)->prox;

    }
}
int insereContatoPilha(Contato **agenda){
    Contato *novo = novoContato();
    if(novo == NULL){
        puts("insereContato(): falha ao inserir contato na agenda.");
        return -1;
    }
    if(*agenda == NULL){
        (*agenda) = novo;
    }
    else{
        novo->prox = *agenda;
        (*agenda) = novo;
    }
    return 0;
}
int removeContatoPilha(Contato **agenda){
    Contato *aux = NULL;
        if((*agenda)==NULL){
            puts("removeContatoPilha(): a pilha esta vazia!");
        }else{
            aux = (*agenda)->prox;
            free ((*agenda));
            (*agenda)=aux;
        }

        return 0;
}
