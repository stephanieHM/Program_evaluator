#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main(){
    int b1=0, b2=1, c, lim=10, i;
    scanf("%d",&b1);
    scanf("%d",&b2);
    //impresion digito inicial
    //printf("%d,", b2);
    for(i=0;i<lim-1;i++){
        //generacion digito siguiente
        c=b1+b2;
        //impresion numero siguiente
        printf("%d\n", c);
        if(i<=(lim-3)){
            //printf(",");
        }else{
            //printf(".");
        }
        //inicializacion numeros previos
        b1=b2;
        b2=c;
    }
    return 0;
}
