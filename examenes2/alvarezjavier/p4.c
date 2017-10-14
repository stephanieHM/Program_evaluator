#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>

int main()
{
    int a[50]={0};
    int i,x=0,y=0;
    float xm,de;

    srand(time(NULL));

    for(i=0;i<10;i++)
    {
        //a[i]=rand()%100;
	scanf("%d",&a[i]);
        x=x+a[i];
        //printf("%d\n",a[i]);
    }
    xm=x/10.00;
    for(i=0;i<10;i++)
    {
        y=y+((a[i]-xm)*(a[i]-xm));
    }
    de=sqrt((y/(9.00)));

    printf("%.2f\n%.2f\n",xm,de);
    return 0;
}
