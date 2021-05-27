#!/bin/bash

# Lab2 - Acc: 0.97
#sudo python eval.py --num_test_images 1 --m_size 64 --v_size 64 --network mlp --run_type cpu
#echo -e '\n=> Accuracy should be 0.97\n'

# Lab7 - Conv Lowering(CPU) - Acc: 1.0
sudo python eval.py --num_test_images 10 --m_size 64 --v_size 64 --network cnn --run_type cpu
echo -e '\n=> Accuracy should be 1.0\n'

# Lab12 - Quantization - Acc: 1.0
sudo python eval.py --num_test_images 10 --m_size 64 --v_size 64 --network cnn --run_type cpu --quantized
echo -e '\n=> Accuracy should be 1.0\n'

# Project_v1
sudo python eval.py --num_test_images 100 --m_size 64 --v_size 64 --network cnn --run_type fpga --quantized
echo -e '\n=> Accuracy should be 1.0\n'
