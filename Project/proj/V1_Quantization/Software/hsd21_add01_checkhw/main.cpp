#include <cstdio>
#include <cstdlib>
#include "fpga_api.h"

// g++ -I./include main.cpp ./src/fpga_api.cpp -o run.exe && sudo ./run.exe

int main(void)
{
	printf("program start\n");

	int m_size = 8;
	int v_size = 8;
	int data_size_M = m_size * v_size; 

	int* flat = new int[data_size_M*2]; // for input & weight
	int* input = flat+ data_size_M;	// for input
	int* mat = flat;  // for weight
	int* output = new int[data_size_M];	//for output	
	int* output_fpga = new int[data_size_M]; // for fpga output

	for(int i = 0 ; i < data_size_M*2 ; ++i)
		flat[i] = i;

	// computation
	for(int i = 0; i < v_size; ++i)
	{
		for(int j = 0; j < v_size; ++j){    
			output[v_size*i+j] = 0;
			for(int k = 0; k < v_size; ++k){
				output[v_size*i+j] += mat[v_size*i+k] * input[v_size*k + j];
			}
		}
	}
	// FPGA offloading
	// memory load
	FPGA dev(0x40000000, 0x43c00000);
	dev.largeMM(mat, input, output_fpga, v_size, v_size, v_size);

	// display
	printf("%-10s%-10s%-10s\n", "index", "CPU", "FPGA");
	for (int i = 0; i < data_size_M; i++)
	{
		printf("%-10d%-10d%-10d\n", i, output[i], output_fpga[i]);
	}

	delete[] flat;
	delete[] output;
	delete[] output_fpga;
	return 0;
}
