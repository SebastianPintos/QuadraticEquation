#include <stdio.h>
#include <stdlib.h>

extern void CMAIN(float a,float b,float c);

int main (){
	
	
	float a;
	float b;
	float c;

	printf("Programa para resolver ecuaciones de la forma: ax² + bx + c = 0 \n");

	printf("Ingrese el valor de a: ");
	scanf("%f", &a); 
	printf("Ingrese el valor de b: ");
	scanf("%f", &b); 
	printf("Ingrese el valor de c: ");
	scanf("%f", &c);

    CMAIN(a,b,c);
	
	return 0;
}


