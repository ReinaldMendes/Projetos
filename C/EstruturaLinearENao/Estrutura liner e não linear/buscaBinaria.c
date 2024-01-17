#include <stdio.h>
#include <stdlib.h>


int BuscaBinaria(int *v, int n, int k){
    int ini=0, meio, fim=n-1;

    while(ini<=fim){
        meio = (ini+fim)/2;
        if(k<v[meio])
            fim= meio-1;
        else if(k<v[meio])
            ini = meio+1;
        else
            return meio;
    }
    return -1;
}
int main (void){
    int v,n=10,k=6;

    printf ("%d",BuscaBinaria(v,n,k));
    }

    return 0;

}


