#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>


int main()
{
    char a[50]={0};
    int i=0;
    float suma=0;
    float promedio=0;
    float des=0;

    srand (time(NULL));

    for(i=0; i<10 ; i++)
    {
	scanf("%d",&a[i]);
        //a[i]=rand()%100;
        //printf("%d\n", a[i]);
        suma=suma+a[i];

    }

    promedio =suma/10;

    for(i=0; i<10; i++)
    {
        des=sqrt((1.0/9.0)*((a[i]-promedio)*(a[i]-promedio)));
    }


    printf("%f\n%f\n",promedio, des);


    return 0;
}
