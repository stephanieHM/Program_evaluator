#include <stdio.h>
#include <stdlib.h>

int main()
{
    int i=0, resultado[50]={0};
    resultado[0]=1;
    scanf("%d",&resultado[0]);
    scanf("%d",&resultado[0]);
    printf("%d\n", resultado[0]);
    printf("%d\n", resultado[0]);
    resultado[1]=1;
    for(i=2;i<=10;i++)
    {
        resultado[i]=i+resultado[i-1];
        printf("%d\n", resultado[i]);
    }
    //printf("\n");

    return 0;
}
