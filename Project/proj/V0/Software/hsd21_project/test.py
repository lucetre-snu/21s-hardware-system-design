#-*- coding: utf-8 -*-

import numpy as np
import pprint as pp
import os
import time
import argparse
import json

from models import MLP, CNN
from data.load_mnist import load_mnist

def main(args):
  num_test_images = args.num_test_images
  images, labels = load_mnist('test', path='./data', max_ind=num_test_images)
  images, labels = images[:num_test_images, :, :], labels[:num_test_images]
  images = images.astype(np.float32)
  images = images/255.

  if args.network == 'mlp': # Lab 2
    model_path = os.path.join('./pretrained_weights', 'mlp_iter_10000.caffemodel')
    net = MLP(model_path, args)
  elif args.network == 'cnn': # Lab 11
    model_path = os.path.join('./pretrained_weights', 'cnn_weights.txt')
    net = CNN(model_path, args)
  else:
    raise

  test_images = [images[i, :, :].copy() for i in xrange(num_test_images)]
  n_correct = 0
  start_time = time.time()

  for i in xrange(num_test_images):
    X = test_images[i]
    X = X.reshape((28*28)) # 28x28->784

    logit = net.inference(X)
    prediction = np.argmax(logit)
    label = labels[i,]

    n_correct += (label == prediction)
  	
  model_stats = {
    'total_time': time.time()-start_time,
    'total_image': num_test_images,
    'accuracy': float(n_correct)/num_test_images,
    'avg_num_call': net.total_num_call[0]/num_test_images,
    'm_size': net.m_size,
    'v_size': net.v_size,
  }
  pp.pprint(model_stats)
  return model_stats


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Neural Network Accleration on FPGA')
    parser.add_argument('--num_test_images', type=int, default=100, help='The number of test images (range: 1~10000)')
    parser.add_argument('--m_size', type=int, default=16, help='The number of row in the block operation')
    parser.add_argument('--v_size', type=int, default=8, help='The number of col in the block operation')
    parser.add_argument('--run_type', type=str, default='cpu', help='The type of execution e.g. cpu, fpga')
    parser.add_argument('--network', type=str, default='cnn', help='The type of execution e.g. cnn, mlp')

    print('[*] Arguments: %s' % parser.parse_args())

    for run_type in ['fpga', 'cpu']:
        print('[*] Changing run_type into {}'.format(run_type))
        for network in ['cnn']: # 'mlp'
            print('[*] Changing network into {}'.format(network))
            for i in range(3):
                num_test_images = 10**(i+2)
                print('[*] Varying num_test_images to {}'.format(num_test_images))
                args = parser.parse_args(['--num_test_images', "{}".format(num_test_images), '--network', network, '--run_type', run_type])
                model_stats = main(args)
                filename = "results/{}_{}_num_test_images_{}.json".format(run_type, network, num_test_images)
                with open(filename, 'w') as fp:
                    json.dump(model_stats, fp)

            for i in range(3):
                v_size = 2**i
                print('[*] Varying v_size to {}'.format(v_size))
                args = parser.parse_args(['--v_size', "{}".format(v_size), '--network', network, '--run_type', run_type])
                model_stats = main(args)
                filename = "results/{}_{}_v_size_{}.json".format(run_type, network, v_size)
                with open(filename, 'w') as fp:
                    json.dump(model_stats, fp)

            if network == 'mlp':
                for i in range(8):
                    m_size = 2**i
                    print('[*] Varying m_size to {}'.format(m_size))
                    args = parser.parse_args(['--m_size', "{}".format(m_size), '--network', network, '--run_type', run_type])
                    model_stats = main(args)
                    filename = "results/{}_{}_m_size_{}.json".format(run_type, network, m_size)
                    with open(filename, 'w') as fp:
                        json.dump(model_stats, fp)