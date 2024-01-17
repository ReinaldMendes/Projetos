#include <stdio.h>
#include <stdlib.h>
#include <time.h>
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

    int *v=NULL, n,i,k, menor=0;
    scanf("%d",&n);
    v=(int*) malloc (sizeof(int)*n);
    if(v==NULL)
        puts("Nao foi possivel alocar memoria");
    srand(time(NULL));
    for(i=0;i<n;i++)
        *(v+i)= rand()% 11;
      for(i=0;i<n;i++)
        printf("V[%d]=%d\n",i,*(v+i));
    for(i=1;i<n;i++){
        if(v[i]< v[menor])
        menor=i;
    }
        printf("v[%d]=%d o menor valor\n",menor,*(v+menor));
        printf ("%d",BuscaBinaria(v,n,8));
      return 0;

}


