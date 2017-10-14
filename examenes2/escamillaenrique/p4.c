#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>

int main()
{
    int i=0,k[50]={0},w=0, z=0;
    float desv=0, prom=0, sum=0, j=0;
    srand(time(NULL));
    for(i=0;i<10;i++)
    {
        //k[i]=rand()%100;
	scanf("%d",&k[i]);
        //printf("%d\n",k[i]);
        sum=sum+k[i];
    }
    prom=(sum/10);
    for(i=0;i<10;i++)
    {
        z=(k[i]-prom);
        w=(z*z);
        j=j+w;
        /*printf("%d\n",z);
        printf("%d\n",w);
        printf("%f\n",j);*/
    }
    printf("%f\n",prom);
    desv=(sqrt((1/9.0)*j));
    printf("%f\n",desv);
    return 0;
}
