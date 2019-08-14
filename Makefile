ARCH=70

NVFLAGS=-std=c++11 -gencode arch=compute_${ARCH},code=sm_${ARCH} -O3 

all: 
	nvcc $(NVFLAGS) main.cu -o main.out

clean:
	rm main.out

	
