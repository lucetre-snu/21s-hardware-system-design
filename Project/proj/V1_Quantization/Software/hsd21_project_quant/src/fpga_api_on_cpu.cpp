#include "fpga_api.h"
#include <stdio.h>
#include <iostream>
#include <cstring>
#include <cmath>

using namespace std;

#define min(x, y) (((x) < (y)) ? (x) : (y))
#define max(x, y) (((x) > (y)) ? (x) : (y))

FPGA::FPGA(off_t data_addr, off_t output_addr, int m_size, int v_size)
{
  m_size_ = m_size;
  v_size_ = v_size;
  data_size_ = (m_size_ + 1) * v_size_; // fpga bram data size

  qvec_ = new char[v_size_];
  qmat_ = new char[m_size_*v_size_];

  m1_size_ = v_size * v_size;
  m2_size_ = v_size * v_size;
  data_size_M = (v_size_+v_size_)*v_size_;
  
  qm1_ = new char[v_size_*v_size_];
  qm2_ = new char[v_size_*v_size_];
  
  qout_ = new int[m_size_];
  qout_M = new int[v_size_*v_size_];

  output_ = new unsigned int[m_size_]; // use output_ as tempolar output
  output_M = new unsigned int[v_size_*v_size_]; // use output_M as tempolar output

  data_ = new float[data_size_];
  data_M = new float[data_size_M];

  qdata_ = new int[data_size_];
  qdata_M = new int[data_size_M];

  num_block_call_ = 0;
}

FPGA::~FPGA()
{
  delete[] output_;
  delete[] data_;
  delete[] qvec_;
  delete[] qmat_;
  delete[] qout_;
}

float *FPGA::matrix(void)
{
  return data_ + v_size_;
}

float *FPGA::vector(void)
{
  return data_;
}

float *FPGA::matrix_M1(void)
{
  return data_M;
}

float *FPGA::matrix_M2(void)
{
  return data_M + m1_size_;
}

int *FPGA::qmatrix(void)
{
  return qdata_M;
}

int *FPGA::qvector(void)
{
  return qdata_;
}

void FPGA::reset(void)
{
  num_block_call_ = 0;
}

int FPGA::num_block_call(void)
{
  return num_block_call_;
}

void quantize(const float* input, char* quantized, int num_input, int bits_min, int bits_max, int offset, float scale)
{
  // TODO: convert floating point to quantized value
  for(int i = 0; i < num_input; i++) {
    quantized[i] = max(bits_min, min(bits_max, input[i] / scale) + offset));
  }
}

void dequantize(int* quantized, float* output, int num_output, int offset, float scale)
{
  // TODO: convert quantized value to floating point
  for(int i = 0; i < num_output; i++) {
    output[i] = quantized[i] * scale;
  }
}

const float* FPGA::blockMM(Compute* comp)
{
  num_block_call_ += 1;

  // cpu version
  float* m1 = this->matrix_M1();
  float* m2 = this->matrix_M2();
  float* out  = reinterpret_cast<float*>(output_M);  

  if(comp->quantized)
  { return data_M;
    char act_bits_min = 0;
    char act_bits_max = (1<<(comp->act_bits-1))-1;

    // TODO calculate the scale factor & calculate the zero-offset & complete quantize function
    float act_scale = (comp->act_max - comp->act_min) / (act_bits_max - act_bits_min); 
    char act_offset = char(ceil(-comp->act_min / act_scale));
    quantize(m2, qm2_, v_size_ * v_size_, act_bits_min, act_bits_max, act_offset, act_scale);
   
    char weight_bits_min = 0;
    char weight_bits_max = (1<<(comp->weight_bits-1))-1;

    // TODO calculate the scale factor & calculate the zero-offset & complete quantize function
    float weight_scale = (comp->weight_max - comp->weight_min) / (act_bits_max - act_bits_min);
    char weight_offset = char(ceil(-comp->weight_min / weight_scale));
    quantize(m1, qm1_, v_size_ * v_size_, weight_bits_min, weight_bits_max, weight_offset, weight_scale);

    for(int i = 0; i < v_size_; ++i) {
      for(int j = 0; j < v_size_; ++j) {    
        qout_M[v_size_*i+j] = 0;
        for(int k = 0; k < v_size_; ++k){
          qout_M[v_size_*i+j] += (qm1_[v_size_*i+k] - weight_offset) * (qm2_[v_size_*k + j] - act_offset);
        }
      }
    }
    dequantize(qout_M, out, v_size_*v_size_, 0, (act_scale * weight_scale));
  }
  else{
    for(int i = 0; i < v_size_; ++i)
    {
      for(int j = 0; j < v_size_; ++j){    
        out[v_size_*i+j] = 0;
        for(int k = 0; k < v_size_; ++k){
          out[v_size_*i+j] += m1[v_size_*i+k] * m2[v_size_*k + j];
        }
      }
    }
  }

  for(int i = 0; i < m1_size_; ++i)
    data_M[i] = out[i];

  return data_M;    
}

const float *FPGA::blockMV(Compute* comp)
{
  num_block_call_ += 1;

  // cpu version
  float *vec = this->vector();
  float *mat = this->matrix();
  float *out = reinterpret_cast<float *>(output_);

  if(comp->quantized)
  {
    char act_bits_min = 0;
    char act_bits_max = (1<<(comp->act_bits-1))-1;

    float act_scale = (comp->act_max - comp->act_min) / 127; // TODO calculate the scale factor
    // printf("act_scale : %f\n", act_scale);
    char act_offset = char(ceil(-(comp->act_min)/act_scale)); // TODO calculate the zero-offset
    // printf("act_offset : %d\n", act_offset);
    quantize(vec, qvec_, v_size_, act_bits_min, act_bits_max, act_offset, act_scale); // TODO complete quantize function
    
    char weight_bits_min = 0;
    char weight_bits_max = (1<<(comp->weight_bits-1))-1;

    float weight_scale = (comp->weight_max - comp->weight_min) / 127; // TODO calculate the scale factor
    // printf("weight_scale : %f\n", weight_scale);
    char weight_offset = char(ceil(-(comp->weight_min)/weight_scale)); // TODO calculate the zero-offset
    // printf("weight_offset : %d\n", weight_offset);
    quantize(mat, qmat_, m_size_ * v_size_, weight_bits_min, weight_bits_max, weight_offset, weight_scale); // TODO complete quantize function

    for (int i = 0; i < m_size_; ++i)
    {
      qout_[i] = 0;
      for (int j = 0; j < v_size_; ++j)
        qout_[i] += (qvec_[j]-act_offset) * (qmat_[v_size_ * i + j]-weight_offset);
    }

    dequantize(qout_, out, v_size_, 0, (act_scale * weight_scale));
  }
  else
  {
    for (int i = 0; i < m_size_; ++i)
    {
      out[i] = 0;
      for (int j = 0; j < v_size_; ++j)
        out[i] += vec[j] * mat[v_size_ * i + j];
    }
  }

  for (int i = 0; i < m_size_; ++i)
    data_[i] = out[i];

  return data_;
}

void FPGA::largeMM(const float* weight_mat, const float* input_mat, float* output, int num_input, int num_output, int num_matrix2, Compute* comp)
{
  float* m1 = this->matrix_M1();
  float* m2 = this->matrix_M2();

  // 0) Initialize output vector		
  for(int i = 0; i < num_output*num_matrix2; ++i)
    output[i] = 0;

  for(int i = 0; i < num_output; i += v_size_) {
    for(int j = 0; j < num_input; j += v_size_) {
      for(int k = 0; k < num_matrix2; k += v_size_) {

        // 0) Initialize input vector
        int block_row = min(v_size_, num_output-i);
        int block_col_1 = min(v_size_, num_input-j);
        int block_col_2 = min(v_size_, num_matrix2-k);

        // 1) Assign a m1
        for (int row = 0; row < block_row; row++) {
          for (int col = 0; col < block_col_1; col++)
            m1[row*v_size_ + col] = weight_mat[(i+row)*num_input + (j+col)];
          for (int col = block_col_1; col < v_size_; col++)
            m1[row*v_size_ + col] = 0;
        }
        for (int l = block_row*v_size_; l < m1_size_; l++)
            m1[l] = 0;
        
        // 2) Assign a m2
        for (int row = 0; row < block_col_1; row++) {
          for (int col = 0; col < block_col_2; col++)
            m2[row*v_size_ + col] = input_mat[(j+row)*num_matrix2 + (k+col)];
          for (int col = block_col_2; col < v_size_; col++)
            m2[row*v_size_ + col] = 0;  
        }
        for (int l = block_col_1*v_size_; l < m2_size_; l++)
            m2[l] = 0;
        
        // 3) Call a function `blockMM() to execute Matrix matrix multiplication
        const float* ret = this->blockMM(comp);

        // 4) Accumulate intermediate results
        for(int n = 0; n<block_row; ++n) {
          for(int m = 0; m<block_col_2; ++m) {
            output[(i + n) + (k + m)*num_output] += ret[n*v_size_ + m];
          }
        }
      }
    } 
  }
}

void FPGA::largeMV(const float* large_mat, const float* input, float* output, int num_input, int num_output, Compute* comp)
{
  float* vec = this->vector();
  float* mat = this->matrix();

  // 0) Initialize output vector	
  for(int i = 0; i < num_output; ++i)
    output[i] = 0;

  for(int i = 0; i < num_output; i += m_size_) {
    for(int j = 0; j < num_input; j += v_size_) {		
      	
      // 0) Initialize input vector
      int block_row = min(m_size_, num_output-i);
      int block_col = min(v_size_, num_input-j);
             
      // 1) Assign a vector
      for (int col = 0; col < block_col; col++)
        vec[col] = input[j + col];
      for (int col = block_col; col < v_size_; col++)
        vec[col] = 0;

      // 2) Assign a matrix
      for (int row = 0; row < block_row; row++)
        for (int col = 0; col < block_col; col++)
          mat[row*v_size_ + col] = large_mat[(i+row)*num_input + (j+col)];

      // 3) Call a function `blockMV() to execute MV multiplication
      const float* ret = this->blockMV(comp);

      // 4) Accumulate intermediate results
      for(int row = 0; row < block_row; ++row)
        output[i + row] += ret[row];
    } 
  }
}

void FPGA::convLowering(const std::vector<std::vector<std::vector<std::vector<float>>>>& cnn_weights,
    std::vector<std::vector<float>>& new_weights,
    const std::vector<std::vector<std::vector<float>>>& inputs,
    std::vector<std::vector<float>>& new_inputs) {
  /*
   * Arguments:
   *
   * conv_weights: [conv_channel, input_channel, conv_height, conv_width]
   * new_weights: [conv_channel, input_channel*conv_height*conv_width]
   * inputs: [input_channel, input_height, input_width]
   * new_inputs: [input_channel*conv_height*conv_width, (input_height-conv_height+1)*(input_width-conv_width+1)]
   *
   */

  int conv_channel = cnn_weights.size();
  int input_channel = cnn_weights[0].size();
  int conv_height = cnn_weights[0][0].size();
  int conv_width = cnn_weights[0][0][0].size();
  int input_height = inputs[0].size();
  int input_width = inputs[0][0].size();

  // For example,
  // new_weights[0][0] = cnn_weights[0][0][0][0];
  // new_inputs[0][0] = inputs[0][0][0];
  for (int i = 0; i < conv_channel; i++)
    for (int j = 0; j < input_channel; j++)
      for (int k = 0; k < conv_height; k++)
        for (int l = 0; l < conv_width; l++)
          new_weights[i][j*conv_height*conv_width + k*conv_width + l] 
            = cnn_weights[i][j][k][l];

  for (int i = 0; i < input_channel; i++)
    for (int j = 0; j < conv_height; j++)
      for (int k = 0; k < conv_width; k++)
        for (int l = 0; l < input_height-conv_height+1; l++)
          for (int m = 0; m < input_width-conv_width+1; m++)
            new_inputs[i*conv_height*conv_width + j*conv_width + k][l*(input_width-conv_width+1) + m] 
              = inputs[i][j+l][k+m];

}
