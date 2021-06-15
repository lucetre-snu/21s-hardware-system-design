#!/bin/bash

# Lab9 - Conv Lowering(CPU) - Acc: 1.0
sudo python eval.py --num_test_images 100 --m_size 64 --v_size 64 --network cnn --run_type cpu
echo -e '\n=> Accuracy should be 1.0\n'

# Quantization - Acc: 1.0
sudo python eval.py --num_test_images 100 --m_size 64 --v_size 64 --network cnn --run_type cpu --quantized
echo -e '\n=> Accuracy should be 1.0\n'

# Projec optimized version
sudo python eval.py --num_test_images 100 --m_size 8 --v_size 8 --network cnn --run_type fpga --quantized
echo -e '\n=> Accuracy should be 1.0\n'
