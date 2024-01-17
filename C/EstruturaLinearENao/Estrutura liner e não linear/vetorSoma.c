#include <stdio.h>

int soma( int V[]);
int subtracao( int V[]);
int mult( int V[]);

int main(void){
    int V[6], x;
    for(int i=0; i<6; i++){
    scanf("%d", &V[i]);
    }
    printf("%d\n", soma(V));
        printf("%d\n", subtracao(V));
            printf("%d\n", mult(V));
    return 0;
}
int soma (int V[]){
int resultado=0;
for(int i=0; i<6; i++){
resultado= resultado+V[i];

}
return resultado;
}
int subtracao (int V[]){
int resultado=V[0];
for(int i=1; i<6; i++){
resultado= resultado-V[i];

}
return resultado;
}
int mult (int V[]){
int resultado=V[0];
for(int i=1; i<6; i++){
resultado= resultado*V[i];

}
return resultado;
}
