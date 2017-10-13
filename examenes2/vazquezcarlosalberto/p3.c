#include <stdio.h>
#include <stdlib.h>

int contador(char *cad)
{
     int i=0;
     while (cad[i]!='\0')
     {
           i++;
     }
     return(i);
}
int main()
{
      int x=0;
      char cadena[100]={0};
      //printf("Inserta una cadena de caracteres\n");
      gets(&cadena);
      x=contador(cadena);
      printf("%d\n",x);
      return 0;
}

