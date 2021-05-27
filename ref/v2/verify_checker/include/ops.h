#ifndef _OPS_H_
#define _OPS_H_
#include <cassert>
#include <fstream>
#include <iostream>
#include <algorithm>
#include <cstring>
#include <vector>

using namespace std;

struct Op
{
  virtual void run(const int *src, int *dst) = 0;
};

struct MatVecOp : Op
{
  FPGA *dev_;
  const int *weights_;
  const int *bias_;
  int input_size_;
  int output_size_;

  MatVecOp(FPGA *dev, const int *weights, const int *bias, int input_size, int output_size)
      : dev_(dev), weights_(weights), bias_(bias), input_size_(input_size), output_size_(output_size) {}

  void run(const int *src, int *dst)
  {
    dev_->largeMV(weights_, src, dst, input_size_, output_size_);

    if (bias_ != nullptr)
    {
      for (int i = 0; i < output_size_; ++i)
      {
        dst[i] += bias_[i];
      }
    }
  }
};

struct ConvOp : Op
{
  FPGA *dev_;
  const vector<vector<vector<vector<int>>>> raw_weights_;
  int input_size_;
  int output_size_;
  int input_channel_, input_height_, input_width_;
  int conv_channel_, conv_height_, conv_width_;

  ConvOp(FPGA *dev, vector<vector<vector<vector<int>>>> raw_weights, int input_size, int output_size, int input_channel, int input_height, int input_width, int conv_channel, int conv_height, int conv_width)
      : dev_(dev), raw_weights_(raw_weights), input_size_(input_size), output_size_(output_size), input_channel_(input_channel), input_height_(input_height), input_width_(input_width), conv_channel_(conv_channel), conv_height_(conv_height), conv_width_(conv_width) {}

  template <typename T>
  T *vectorToArray(vector<vector<T>> const &v)
  {
    T *rv = (T *)malloc((v.size() * v[0].size()) * sizeof(T));
    for (unsigned i = 0; i < v.size(); i++)
      memcpy(rv + v[i].size() * i, &(v[i][0]), v[i].size() * sizeof(T));
    return rv;
  }

  void run(const int *src, int *dst)
  {
    vector<vector<int>> new_weights_(conv_channel_, vector<int>(conv_height_ * conv_width_ * input_channel_));
    vector<vector<vector<int>>> src_(input_channel_, vector<vector<int>>(input_height_, vector<int>(input_width_)));
    vector<vector<int>> new_src_(new_weights_[0].size(), vector<int>((input_height_ - conv_height_ + 1) * (input_width_ - conv_width_ + 1)));

    for (int i = 0; i < input_channel_; i++)
      for (int j = 0; j < input_height_; j++)
        for (int k = 0; k < input_width_; k++)
          src_[i][j][k] = *(src + i * input_height_ * input_width_ + j * input_width_ + k);

    dev_->convLowering(raw_weights_, new_weights_, src_, new_src_);

    int *weights_ = vectorToArray(new_weights_);
    for (int i = 0; i < new_src_[0].size(); i++)
    {
      vector<int> vec_src(new_src_.size());
      for (int j = 0; j < new_src_.size(); j++)
        vec_src[j] = new_src_[j][i];

      int *new_src = &vec_src[0];
      dev_->largeMV(weights_, new_src, dst + i * conv_channel_, conv_height_ * conv_width_ * input_channel_, conv_channel_);
    }
  }
};

struct ReLUOp : Op
{
  int input_size_;
  ReLUOp(int input_size) : input_size_(input_size) {}

  void run(const int *src, int *dst)
  {
    for (int i = 0; i < input_size_; ++i)
    {
      dst[i] = src[i] > 0 ? src[i] : 0;
    }
  }
};

struct SoftmaxOp : Op
{
  int input_size_;
  SoftmaxOp(int input_size) : input_size_(input_size) {}

  void run(const int *src, int *dst)
  {
    int max_val = *max_element(src, src + input_size_);

    int sum = 0;
    for (int i = 0; i < input_size_; ++i)
    {
      dst[i] = exp(src[i] - max_val);
      sum += dst[i];
    }

    for (int i = 0; i < input_size_; ++i)
    {
      dst[i] /= sum;
    }
  }
};

struct FlattenOp : Op
{
  int input_size_;
  FlattenOp(int input_size) : input_size_(input_size) {}

  void run(const int *src, int *dst)
  {
    for (int i = 0; i < input_size_; ++i)
    {
      dst[i] = src[i];
    }
  }
};
#endif
