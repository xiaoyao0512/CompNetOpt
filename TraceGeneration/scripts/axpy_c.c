#include<stdio.h>

void axpy(float a, float *x, float *y) {
	int i;
	for (i = 0; i<4; i++) {
		y[i] = a * x[i];
	}
}


int main() {
	float a = 2.0f;
	float x[4] = {1.0f, 2.0f, 3.0f, 4.0f};
	float y[4];
	
	axpy(a, x, y);

	int i;
	for (i = 0; i<4; i++) {
		printf("y[%d] = %f\n", i, y[i]);
	}

	return 0;
}
