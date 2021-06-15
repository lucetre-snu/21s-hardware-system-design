#ifndef _FPGA_API_H_
#define _FPGA_API_H_

#include <sys/types.h>

// matrix vector multiplicator
// matrix M: SIZE by SIZE
// vector V: SIZE
// output = M * V

#define SIZE 8 // input, weight, output Matrix = 8 x 8

class FPGA
{
private:
    float* noncache_addr;
    float* bram_addr;
    float* data_;

	int fd_;	
    float* data_noncache;
	unsigned int *fpga_dma;
    unsigned int* api_;
	
public:
	FPGA(off_t fpga_dma_addr, off_t _noncache_addr, off_t _bram_addr, off_t api_addr);
    ~FPGA();
	
	// return internal pointer for the data
	float* matrix_M1(void);
	float* matrix_M2(void);
	
	// perform matrix multiplication and return output array pointer
    const float* run();	
	void transfer(const float *src, const float *dst, const unsigned int size);
	
	// input vector size: M
	// matrix size: N by M
	// output vector size: N
	// O = M * I
	void largeMM(const float* weight_mat, const float* input_mat, float* output, int num_input, int num_output, int num_matrix2);
};

#endif

