#include <stdio.h>
#include <stdlib.h>
//Hecho por Emmanuel Jim�nez Chavero
//Tercer Examen parcial de programaci�n
//Profesor Erik Rivas
int main()
{
    int S=0,x=0,s=0;
    for(S=0;S<10000;S=s*s)
    {
        scanf("%d",&x);
        s=s+x;
    }
    printf("%d\n",S);
    return 0;
}
