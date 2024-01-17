#include <stdio.h>
#include <stdlib.h>

int main (void){
int *v=NULL, *T=NULL, n, i;

scanf("%d", &n);

v= (int*) malloc (sizeof(int)*n);
//malloc, inicializa tudo com LIXO
if( v== NULL)
    puts ("Nao foi possivel alocar o vetor!");
//for (i=0; i<n;i++)
 //   v[i]=0;
for (i=0; i<n;i++)
   printf("V[%d]=%d\n",i,*(v+i));
//calloc inicializa tudo com 0
   T=calloc(n, sizeof(int));
   for (i=0; i<n;i++)
   printf("T[%d]=%d\n",i,*(T+i));
return 0;


}

