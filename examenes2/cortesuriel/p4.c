#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>

int main()
{
    int i=0;
    int j=0;
    int x[200]={0};
    int suma=0;
    float promedio=0;
    float sum=0;
    float desv=0;
    srand(time(NULL));

    for(i=0;i<10; i++)
    {
        //x[i]=rand()%100;
	scanf("%d",&x[i]);
        suma=suma+x[i];
       //printf("%d\n",x[i]);
    }
    promedio=suma/10.0;
    printf("%f\n",promedio);

    for(j=0;j<10;j++)
    {
        sum=sum+((x[j]-promedio)*(x[j]-promedio));
    }
    //printf("La sumatoria del numero menos el promedio al cuadrado es: %f\n",sum);

    desv=sqrt(sum/(9));

    printf("%f\n",desv);



}
