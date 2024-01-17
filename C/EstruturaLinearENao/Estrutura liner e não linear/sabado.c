#include <stdio.h>

int somatorioN (int n);
int somatorioN (int n);
int fatorialNRecursiva(int n);
int somatorioNRecursiva(int n);
int main (void){
int x;
scanf("%d",&x);
printf("Somatorio %d: %d\n", x, somatorioN(x));
printf("Fatorial %d: %d\n", x, fatorialN(x));
printf("Fatorial %d: %d\n", x, fatorialNRecursiva(x));
printf("Somatorio %d: %d\n", x, somatorioNRecursiva(x));
return 0;
}

int somatorioN(int n){
int resultado=0;
for(int i=1;i<=n;i++){
    resultado=resultado+i;
}
return resultado;

}
int fatorialN(int n){
int resultado=1;
for(int i=1;i<=n;i++){
    resultado=resultado*i;
}
return resultado;

}
int fatorialNRecursiva(int n){
int resultado=1;
if(n==1||n==0)
    return 1;
resultado=fatorialNRecursiva(n-1)*n;
return resultado;
}
int somatorioNRecursiva(int n){
int resultado=0;
if(n==0)
    return 0;
resultado=somatorioNRecursiva(n-1)+n;
return resultado;
}

