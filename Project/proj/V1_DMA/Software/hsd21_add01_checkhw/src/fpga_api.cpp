#include "fpga_api.h"
#include <cstdio>
#include <cstring>
#include <fcntl.h>
#include <unistd.h>
#include <sys/mman.h>
#include <iostream>
using namespace std;

#define DATA_SIZE SIZE*(SIZE+1)*sizeof(float) // fpga bram data size

#define min(x,y) (((x)<(y))?(x):(y))

FPGA::FPGA(off_t fpga_dma_addr, off_t _noncache_addr, off_t _bram_addr, off_t api_addr)
{
    bram_addr     = (float *) _bram_addr;
    noncache_addr = (float *) _noncache_addr;
    data_         = new float[DATA_SIZE];

    fd_           = open("/dev/mem", O_RDWR);
    data_noncache = static_cast<float *>(mmap(NULL, DATA_SIZE, PROT_READ|PROT_WRITE, MAP_SHARED, fd_, _noncache_addr));
    fpga_dma      = static_cast<unsigned int *>(mmap(NULL, sizeof(unsigned int)*16, PROT_READ|PROT_WRITE, MAP_SHARED, fd_, fpga_dma_addr));
    api_          = static_cast<unsigned int *>(mmap(NULL, sizeof(unsigned int), PROT_READ|PROT_WRITE, MAP_SHARED,fd_, api_addr));
}

FPGA::~FPGA()
{
    munmap(data_noncache, DATA_SIZE);
    munmap(fpga_dma, sizeof(unsigned int)*16);
    munmap(api_, sizeof(unsigned int));
    close(fd_);

    delete[] data_;
}

float* FPGA::matrix_M1(void)
{
	return data_ ;
}

float* FPGA::matrix_M2(void)
{
	return data_ + SIZE * SIZE;
}

void __attribute__((optimize("O0"))) FPGA::transfer(const float *src, const float *dst, const unsigned int size) {
  *(fpga_dma + 6) = (unsigned int) src;
  *(fpga_dma + 8) = (unsigned int) dst;
  *(fpga_dma + 10) = size;
  while ((*(fpga_dma + 1) & 0x00000002) == 0);
}

const float* __attribute__((optimize("O0"))) FPGA::run()
{
    for (int i = 0; i < 128; i++) {
      cout << data_[i] << " ";
      if (i % 8 == 7) cout << endl;
    }
    memcpy(data_, data_noncache, DATA_SIZE); 
    data_[16] = 0;
    transfer(noncache_addr, bram_addr, DATA_SIZE);

    for (int i = 0; i < 128; i++) {
      cout << data_noncache[i] << " ";
      if (i % 8 == 7) cout << endl;
    }

    *api_ = 0x5555;
    while(*api_ == 0x5555);
    transfer(bram_addr, noncache_addr, DATA_SIZE);
    memcpy(data_noncache, data_, DATA_SIZE); 
    for (int i = 0; i < 64; i++) {
      cout << data_[i] << " ";
      if (i % 8 == 7) cout << endl;
    }

    return data_;    
}

// Test code for bitstream
void FPGA::largeMM(const float* weight_mat, const float* input_mat, float* output, 
							int num_input, int num_output, int num_matrix2) {
	float* m1 = this->matrix_M1();
	float* m2 = this->matrix_M2();
	for(int i = 0; i < num_output*num_matrix2; ++i)
    output[i] = 0;

  for(int i = 0; i < num_output; i += SIZE)
  {
    for(int j = 0; j < num_input; j += SIZE)
    {			
      for(int k = 0; k < num_matrix2; k += SIZE)
      {
        // 0) Initialize input vector
        int block_row = min(SIZE, num_output-i);
        int block_col_1 = min(SIZE, num_input-j);
        int block_col_2 = min(SIZE, num_matrix2-k);

        // 1) Assign a m1
        for (int row = 0; row < block_row; row++) {
          for (int col = 0; col < block_col_1; col++)
            m1[row*SIZE + col] = weight_mat[(i+row)*num_input + (j+col)];
          for (int col = block_col_1; col < SIZE; col++)
            m1[row*SIZE + col] = 0;
      	}
        for (int l = block_row*SIZE; l < SIZE*SIZE; l++)
            m1[l] = 0;

        // 2) Assign a m2
        for (int row = 0; row < block_col_1; row++) {
          for (int col = 0; col < block_col_2; col++)
            m2[row*SIZE + col] = input_mat[(j+row)*num_matrix2 + (k+col)];
          for (int col = block_col_2; col < SIZE; col++)
            m2[row*SIZE + col] = 0;
      	}
        for (int l = block_col_1*SIZE; l < SIZE*SIZE; l++)
            m2[l] = 0;

        // 3) Call a function `blockMM() to execute Matrix matrix multiplication
        const float* rst = this->run();

        // 4) Accumulate intermediate results
        // It is slightly different from the code for the project.
        for(int n = 0; n<block_row; ++n) {
          for(int m = 0; m<block_col_2; ++m) {
            output[n*SIZE + m] += rst[n*SIZE + m];
          }
        }
      } 
    }
  }
}

