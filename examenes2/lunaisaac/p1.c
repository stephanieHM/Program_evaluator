#include <stdio.h>
#include <stdlib.h>

int main()
{
    int x, sumacuadrado=0, suma=0;
    //printf("Escriba numeros positivos:\n");
    while(sumacuadrado<10000)
    {
        scanf("%d", &x);
        suma=suma+x;
        sumacuadrado=(suma)*(suma);
    }
    printf("%d\n", sumacuadrado);
    return 0;
}
