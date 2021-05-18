
import argparse


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Neural Network Accleration on FPGA')
    parser.add_argument('--num_test_images', type=int, default=100, help='The number of test images (range: 1~10000)')
    parser.add_argument('--m_size', type=int, default=16, help='The number of row in the block operation')
    parser.add_argument('--v_size', type=int, default=16, help='The number of col in the block operation')
    parser.add_argument('--run_type', type=str, default='cpu', help='The type of execution e.g. cpu, fpga')
    parser.add_argument('--network', type=str, default='cnn', help='The type of execution e.g. cnn, mlp')

    for i in range(5):
        args = parser.parse_args(['--num_test_images', "{}".format(10**i), '--network', 'mlp'])
        print(args)
