#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <sys/time.h>

#define SIZE 64

typedef union {
  float f;
  unsigned int i;
} foo;

struct timeval st[4];
int st2time (struct timeval st_) {
  return st_.tv_sec * 1000 * 1000 + st_.tv_usec;
}

int main(int argc, char** argv) {
  int i, j;
  foo container;

  float flat[SIZE * (SIZE + 1)];

  // initialization
  FILE *fd;
  fd = fopen("./input.txt", "r");

  unsigned int a;
  i = 0;
  while ( !feof(fd) ) {
    if (fscanf(fd, "%X", &a) != EOF) {
      container.i = a;
      flat[i] = container.f;
      i++;
    }
  }
  fclose(fd);

  // memory load
  int foo;
  foo = open("/dev/mem", O_RDWR);
  float *ps_dram = mmap(NULL, (SIZE * (SIZE + 1))* sizeof(float), PROT_READ|PROT_WRITE, MAP_SHARED, foo, 0x10000000);

  // MCPY: DRAM -> DRAM
  gettimeofday (&st[0], NULL);
  for (i = 0; i < SIZE * (SIZE + 1); i++)
    *(ps_dram + i) = flat[i];
  gettimeofday (&st[1], NULL);
  memcpy( ps_dram, flat, SIZE * (SIZE + 1) * sizeof(float) );
  gettimeofday (&st[2], NULL);

  // DMA : DRAM -> BRAM
  unsigned int *fpga_dma = mmap(NULL, 16*sizeof(unsigned int), PROT_READ|PROT_WRITE, MAP_SHARED, foo, 0x7E200000);
  gettimeofday (&st[2], NULL);
  *(fpga_dma+6) = 0x10000000;
  *(fpga_dma+8) = 0xC0000000;
  *(fpga_dma+10) = SIZE * (SIZE + 1) * sizeof(float);
  while ((*(fpga_dma+1) & 0x00000002) == 0);
  gettimeofday (&st[3], NULL);

  // Check if the data is valid
  float *fpga_bram = mmap(NULL, (SIZE * (SIZE + 1))* sizeof(float), PROT_READ|PROT_WRITE, MAP_SHARED, foo, 0x40000000);
  int num_mismatch = 0;
  for (i = 0; i < SIZE * (SIZE + 1); i++) {
    if ( *(fpga_bram + i) != *(ps_dram + i) ) {
      printf("%f, %f\n", *(fpga_bram + i), *(ps_dram + i) );
      num_mismatch++;
    }
  }
  
  printf("The number of mismatch (dram <-> bram) : %d\n", num_mismatch);

  printf("%s: %d\n", "MCPY1", st2time(st[ 1]) - st2time(st[ 0]));
  printf("%s: %d\n", "MCPY2", st2time(st[ 2]) - st2time(st[ 1]));
  printf("%s: %d\n", "DMA  ", st2time(st[ 3]) - st2time(st[ 2]));

  close(foo);

  return 0;
}
