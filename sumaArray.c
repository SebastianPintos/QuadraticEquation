#include <stdio.h>
#include <stdlib.h>

float suma_vf(float *vector, int cantidad);

int main (){
	
	float vector[] = {3.5, 5.2, 6.0, 10.0, 0.2};
    size_t cantidad = sizeof(vector)/sizeof(vector[0]);

    printf("La suma de los elementos en el vector es: %f\n", suma_vf(vector,cantidad));
	
	return 0;
}


