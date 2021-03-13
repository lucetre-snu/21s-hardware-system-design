#include"fpga_api.h"
#include<cstring>
#include<stdio.h>
#include<iostream>
using namespace std;

#define min(x,y) (((x)<(y))?(x):(y))

FPGA::FPGA(off_t data_addr, off_t output_addr, int m_size, int v_size)
{
	m_size_ = m_size;
	v_size_ = v_size;
        data_size_ = (m_size_ + 1) * v_size_; // fpga bram data size
	num_block_call_ = 0;

	output_ = new unsigned int[m_size_];    // use output_ as tempolar output
        data_ = new float[data_size_];	
}

FPGA::~FPGA()
{
	delete[] output_;
	delete[] data_;
}

float* FPGA::matrix(void)
{
	return data_ + v_size_;
}

float* FPGA::vector(void)
{
	return data_;
}

void FPGA::reset(void)
{
	num_block_call_ = 0;
}

int FPGA::num_block_call(void)
{
	return num_block_call_;
}

const float* FPGA::blockMV()
{
	num_block_call_ += 1;

	float* vec = this->vector();
	float* mat = this->matrix();
	float* out  = reinterpret_cast<float*>(output_);  

	for(int i = 0; i < m_size_; ++i)
	{
		out[i] = 0;
		for(int j = 0; j < v_size_; ++j)
			out[i] += vec[j] * mat[v_size_*i + j];
	}

	for(int i = 0; i < m_size_; ++i)
	{
		data_[i] = out[i];
	}

	return data_;    
}

void FPGA::largeMV(const float* large_mat, const float* input, float* output, int num_input, int num_output)
{
	float* vec = this->vector();
	float* mat = this->matrix();
    
	// 0) Initialize output vector		
	for(int i = 0; i < num_output; ++i)
	{
		output[i] = 0;
	}
    
// 	general MV
// 	for(int i = 0; i < num_output; i++) {
// 		for(int j = 0; j < num_input; j++) {
// 			output[i] += large_mat[num_input * i + j] * input[j];
// 		}
// 	}
    
	for(int i = 0; i < num_output; i += m_size_)
	{
		for(int j = 0; j < num_input; j += v_size_)
		{			
			// 0) Initialize input vector		
			int block_row = min(m_size_, num_output-i);
			int block_col = min(v_size_, num_input-j);
            
			// 1) Assign a vector
			/* IMPLEMENT */
            for (int col = 0; col < block_col; col++)
                data_[col] = input[j + col];
            for (int col = block_col; col < v_size_; col++)
                data_[col] = 0;

			// 2) Assign a matrix
			/* IMPLEMENT */
            for (int row = 0; row < block_row; row++)
                for (int col = 0; col < block_col; col++)
                    data_[(row+1)*v_size_ + col] = large_mat[(i+row)*num_input + (j+col)];

			// 3) Call a function `block_call() to execute MV multiplication
			const float* ret = this->blockMV();

			// 4) Accumulate intermediate results
			for(int row = 0; row < block_row; ++row)
			{
				output[i + row] += ret[row];
			}
		} 
	}
}

