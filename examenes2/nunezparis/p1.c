#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main()
{
    int suma=0, x, vf;
    while(pow(suma,2)<10000){
        //printf("Ingresa un numero: \n");
        scanf("%d",&x);
        suma=suma+x;
    }
    vf=pow(suma,2);
    printf("%d\n",vf);
    return 0;
}
