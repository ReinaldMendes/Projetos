#include <stdio.h>

int main (void){
    int x=2, y=3, aux;

    aux=x;
    x=y;
    y=aux;
    printf("x =%d e y= %d \n", x, y);
    return 0;

}
