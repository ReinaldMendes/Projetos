#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int indiceMenor( int *v, int ini, int fim);
int*alocaVetor(int n);
void troca(int *v, int i, int j);
void bubbleSort(int *v, int ini, int fim);
int BuscaBinaria(int *v, int n, int k);
void isertionSort (int *v, int n, int k);
void selectionSort(int *v, int ini, int fim);
void quickSort(int *v, int ini, int fim);
void shellSort(int *v, int ini, int fim);
void merge(int *v, int ini, int meio,int fim);
void mergeSort(int *v, int ini, int fim);

int main(void){
        int *v, n, i;
        srand(time(NULL));
        scanf("%d", &n);
        v = alocaVetor(n);
    for(i = 0; i < n; i++){
        v[i] = rand() % 101;
    }
        puts("\nVetor");
    for(i = 0; i < n; i++){
        printf("%d ", v[i]);
    }
    printf("\n\n");
    /* puts("Selection Sort"); */
    /* selectionSort(v, 0, n-1); */
    /*puts("Bubble Sort");
    bubbleSort(v, 0, n-1);*/
    /*puts("Insertion Sort");
    insertionSort(v, 0, n-1);*/
    //puts("Quick Sort");
    //quickSort(v, 0, n-1);
     //puts("shellSort");
     //shellSort(v, 0, n-1);
    puts("mergeSort");
    mergeSort(v, 0, n-1);
    for(i = 0; i < n; i++){
    printf("%d ", v[i]);
    }
    printf("\n\n");
return 0;
}

int*alocaVetor(int n){
int*v=(int *) malloc(sizeof(int)*n);
if ( v== NULL){
    puts ("alocaVetor(): Nao foi possivel alocar o vetor");
    return NULL;
}
else {
        return v;
}
}
  void troca(int *v, int i, int j){
      int aux;
      aux= v[i];
      v[i]= v[j];
      v[j] = aux;
}


void selectionSort(int *v, int ini, int fim) {
    for (int i = ini; i <= fim; i++) {
        int indice_menor = i;
        for (int j = i + 1; j <= fim; j++) {
            if (v[j] < v[indice_menor]) {
                indice_menor = j;
            }
        }
        if (indice_menor != i) {
            troca(v, i, indice_menor);
        }
    }
}

int indiceMenor(int *v, int ini, int fim) {
    int indice_menor = ini;
    for (int i = ini + 1; i <= fim; i++) {
        if (v[i] < v[indice_menor]) {
            indice_menor = i;
        }
    }
    return indice_menor;
}
void bubbleSort(int *v, int ini, int fim) {
    for (int i = ini; i <= fim; i++) {
        for (int j = ini; j <= fim - i - 1; j++) {
            if (v[j] > v[j + 1]) {
                troca(v, j, j + 1);
            }
        }
    }
}

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

void insertionSort(int *v, int ini, int fim) {
    for (int i = ini+1; i <= fim; i++) {
        int aux = v[i];
        int j = i - 1;
        while (j >= ini && aux < v[j] ) {
            troca (v,j+1,j);
            j=j-1;
        }
    }
}
void quickSort(int *v, int ini, int fim){
    int i = ini, j = fim, pivo = v[ini];

    while(i<=j){
    while(v[i] < pivo){
    i = i+1;
    }
    while(v[j] > pivo){
    j = j-1;
    }
    if(i<=j){
    troca(v, i, j);
        i = i+1;
        j = j-1;
    }
    }
    if(ini < j){
    quickSort(v, ini, j);
    }
    if(i < fim){
    quickSort(v, i, fim);
    }
}
void shellSort(int *v, int ini, int fim) {
    int h = (ini + fim) / 2, i, j, aux;
    while (h > 0) {
        i = h;
        while (i <= (fim - ini)) { // Alterei "(fim - ini + 1)" para "(fim - ini)"
            j = i;
            aux = v[i];
            while (j >= h && aux < v[j - h]) {
                v[j] = v[j - h];
                j = j - h;
            }
            v[j] = aux;
            i = i + 1;
        }
        h = h / 2;
    }
}




void merge(int *v, int ini, int meio, int fim) {
    int *v_aux, aux_ini, aux_meio, aux_vaux;
    v_aux = (int*) malloc(sizeof(int) * (fim - ini + 1));
    aux_ini = ini;
    aux_meio = meio + 1;
    aux_vaux = 0;

    while (aux_ini <= meio && aux_meio <= fim) {
        if (v[aux_ini] <= v[aux_meio]) {
            v_aux[aux_vaux] = v[aux_ini];
            aux_ini++;
        } else {
            v_aux[aux_vaux] = v[aux_meio];
            aux_meio++;
        }
        aux_vaux++;
    }

    while (aux_ini <= meio) {
        v_aux[aux_vaux] = v[aux_ini];
        aux_ini++;
        aux_vaux++;
    }

    while (aux_meio <= fim) {
        v_aux[aux_vaux] = v[aux_meio];
        aux_meio++;
        aux_vaux++;
    }

    for ( aux_vaux=ini;aux_vaux<=fim;  aux_vaux++) {
        v[aux_vaux] = v_aux[aux_vaux -ini];
    }

}

void mergeSort(int *v, int ini, int fim) {
    if (ini < fim) {
        int meio = (ini + fim) / 2;
        mergeSort(v, ini, meio);
        mergeSort(v, meio + 1, fim);
        merge(v, ini, meio, fim);
    }
}





