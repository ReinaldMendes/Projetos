#include <stdio.h>

void boasVindas(void);
char letrasMaiuscula( char c);
int main(void){
    char letra;
    boasVindas();
    scanf("%c", &letra);
    printf("letra maiuscula: %c\n", letrasMaiuscula(letra));
    return 0;
}
void boasVindas(void){
printf("Seja bem-vindo!\n");
}
char letrasMaiuscula( char c){
return c-32;
}
