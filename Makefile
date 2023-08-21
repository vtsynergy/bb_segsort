ARCH=70

NVFLAGS=-std=c++14 -gencode arch=compute_${ARCH},code=sm_${ARCH} -O3 --expt-relaxed-constexpr -lcudart -lcudadevrt -lstdc++

all: 
	nvcc $(NVFLAGS) main.cu -o main.out

clean:
	rm main.out

	
