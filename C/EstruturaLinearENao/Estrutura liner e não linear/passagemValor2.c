#include <stdio.h>
void troca(int *a, int *b){
    int aux;
    aux  = *a;
    *a = *b;
    *b = aux;
}
int main (void){
    int x=2, y=3;

   troca(&x, &y);

    printf("x =%d e y= %d \n", x, y);
    return 0;

}
