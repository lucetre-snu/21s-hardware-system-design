#include "fpga_api.h"
#include <cstdio>
#include <cstring>

#include <fcntl.h>
#include <unistd.h>
#include <sys/mman.h>

#define DATA_SIZE SIZE*(SIZE+1)*sizeof(int) // fpga bram data size

#define min(x,y) (((x)<(y))?(x):(y))

FPGA::FPGA(off_t data_addr, off_t api_addr)
{
    fd_ = open("/dev/mem", O_RDWR);
    data_ = static_cast<int*>(mmap(NULL, DATA_SIZE, PROT_READ|PROT_WRITE, MAP_SHARED, fd_, data_addr));
    api_ = static_cast<unsigned int*>(mmap(NULL, sizeof(unsigned int), PROT_READ|PROT_WRITE, MAP_SHARED,fd_, api_addr));
}

FPGA::~FPGA()
{
    munmap(data_, DATA_SIZE );
    munmap(api_, sizeof(unsigned int));
    close(fd_);
}

int* FPGA::matrix(void)
{
	return data_ + SIZE;
}

int* FPGA::vector(void)
{
	return data_;
}

const int* __attribute__((optimize("O0"))) FPGA::run()
{
    *api_ = 0x5555;
    while(*api_ == 0x5555);

    return data_;    
}

// Test code for bitstream
void FPGA::largeMV(const int* large_mat, const int* input,
		int* output, int M, int N)
{
	// 0) Initialize output vector	
	for(int m = 0; m < N ; ++m)
		output[m] = 0;
	

	int* vec = this->vector();
	int* mat = this->matrix();

int *bram_ = static_cast<int *>(mmap(NULL, (N + 1) * M * sizeof(int), PROT_READ | PROT_WRITE, MAP_SHARED, fd_, 0x40000000));
	

	*(api_+1) = M;
	*(api_+2) = N;
	memset(bram_,1,sizeof(int)*M*(N+1));
	memcpy(bram_, input, sizeof(int)*M);
    memcpy(bram_+M, large_mat, sizeof(int)*M*N);
  *api_ = 0x5555;
  while (*api_ == 0x5555);
  for(int i=0; i< N; i++)
  	output[i] = bram_[i];
  munmap(bram_, (N + 1) * M * sizeof(int));


	// for(int n = 0; n < N ; n += SIZE)
	// {
	// 	for(int m = 0; m < M ; m += SIZE)
	// 	{
	// 		// 0) Initialize input vector
	// 		int n_remain = min(SIZE, N-n);
	// 		int m_remain = min(SIZE, M-m);
			
	// 		memset(vec, 0, sizeof(int)*SIZE);
    //   		memcpy(vec, input+m, sizeof(int)*m_remain);
	// 		memset(mat, 0, sizeof(int)*(SIZE * SIZE));
    //   		for(int k=0; k< n_remain; k++){
    //     		memcpy(mat+k*SIZE , large_mat +m+ (k+n)*M, sizeof(int)*m_remain);
    //   		}
	// 		for(int i=0; i<SIZE; i++){
	// 			printf(" %d \n", vec[i]);
	// 		}
	// 		printf("mat\n");
	// 		for(int i=0; i< SIZE * SIZE; i++)
	// 			printf(" %d\n", mat[i]);
	// 		printf("out\n");
			
	// 		// 3) Call a function `run() to execute MV multiplication
	// 		const int* rst = this->run();
	// 		for(int i=0; i< n_remain; i++)
	// 			printf( "%d\n", rst[i] );
	// 		// 4) Accumulate intermediate results
	// 		for(int nn = 0; nn < n_remain; nn++)
	// 			output[n + nn] += rst[nn];
	// 	} 
	// }
}
