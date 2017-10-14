#include <stdio.h>
#include <stdlib.h>
#include <time.h>
int main()
{
    int cad[50];
    int x=0,i,j,suma=0;
    int hora=time(NULL);
    srand(hora);
    for(i=0;i<10;i++)
    {
	scanf("%d", &cad[i]);
        //cad[i]=rand()%100;
        //printf("%d\n",cad[i]);
    }
    for(i=0;i<100;i+=10)
    {
	
        printf("%d",i);
        for(j=0;j<10;j++)
        {
            if(cad[j]>=i&&cad[j]<i+10)
            {
                printf("*");
            }
        }

	printf("\n",i);
    }
    return 0;
}
