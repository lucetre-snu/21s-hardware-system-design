#include <cstdio>
#include <cstdlib>
#include "fpga_api.h"

int main(void)
{
        printf("program start");
	// input vector size M
	// output vector size N
	// matix size M x N
	int M = 32;
	int N = 16;

	int* flat = new int[M*(N+1)];
	int* input = flat;
	int* mat = flat + M;  
	int* output = new int[N];
	int* output_fpga = new int[N];

	for(int i = 0 ; i < M*(N+1) ; ++i)
		flat[i] = rand()%7;

	
	// computation
	for (int i = 0; i < N; i++)		
	{
		output[i] = 0;
		for (int j = 0; j < M; j++)
			output[i] += input[j] * mat[M*i +j];
	}		

	// FPGA offloading
	// memory load
	FPGA dev(0x40000000, 0x43c00000);
	dev.largeMV(mat, input, output_fpga, M, N);

	// display
	printf("%-10s%-10s%-10s\n", "index", "CPU", "FPGA");
	for (int i = 0; i < N; i++)
	{
		printf("%-10d%-10d%-10d%\n", i, output[i], output_fpga[i]);
	}
// 	dev.largeMV(mat, input, output_fpga, M, N);
// for (int i = 0; i < N; i++)
// 	{
// //		printf("%-10d%-10d%-10d%\n", i, output[i], output_fpga[i]);
// 	}
// 	dev.largeMV(mat, input, output_fpga, M, N);
// for (int i = 0; i < N; i++)
// 	{
// //		printf("%-10d%-10d%-10d%\n", i, output[i], output_fpga[i]);
// 	}
for(int i=0; i<M; i++)
	printf("%d\n",input[i]);
printf("mat \n");
for(int i=0; i<M*N; i++)
	printf("%d \n",mat[i]);
	delete[] flat;
	delete[] output;
	delete[] output_fpga;
	return 0;
}
