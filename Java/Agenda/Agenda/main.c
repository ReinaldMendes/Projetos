#include "agenda.h"
#include "stdio.h"

int main(void){
    Contato *agenda = NULL;
    int i;

    for(i = 0; i<3; i++){
        insereContatoPilha(&agenda);
    }
    puts("\n\n ==== Antes da remocao ==== \n");
    imprimeContato(&agenda);
    removeContatoPilha(&agenda);
    puts("\n\n Depois da remocao \n");
    imprimeContato(&agenda);
    return 0;
}
