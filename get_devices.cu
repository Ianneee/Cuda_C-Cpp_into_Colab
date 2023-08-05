#include <cuda.h>
#include <stdio.h>

int main(){
    int deviceCount = 0;
    cudaGetDeviceCount(&deviceCount);
    if (deviceCount == 0) printf("No cuda device found\n");
    else {
        printf("Found %d devices\n", deviceCount);
        cudaDeviceProp pr;
        for (int i=0; i<deviceCount; i++){
            cudaGetDeviceProperties(&pr, i);
            printf("Device Number: %d\n", i);
            printf("  Device name: %s\n", pr.name);
            printf("  Memory Clock Rate (MHz): %d\n", pr.memoryClockRate/1024);
            printf("  Memory Bus Width (bits): %d\n", pr.memoryBusWidth);
            printf("  Peak Memory Bandwidth (GB/s): %.1f\n", 2.0*pr.memoryClockRate*(pr.memoryBusWidth/8)/1.0e6);
            printf("  Total global memory (Gbytes) %.1f\n",(float)(pr.totalGlobalMem)/1024.0/1024.0/1024.0);
            printf("  Shared memory per block (Kbytes) %.1f\n",(float)(pr.sharedMemPerBlock)/1024.0);
            printf("  minor-major: %d-%d\n", pr.minor, pr.major);
            printf("  Warp-size: %d\n", pr.warpSize);
            printf("  Concurrent kernels: %s\n", pr.concurrentKernels ? "yes" : "no");
            printf("  Concurrent computation/communication: %s\n\n",pr.deviceOverlap ? "yes" : "no");

            printf("  Max Thread per block: %d\n", pr.maxThreadsPerBlock);
            printf("  Max Thread per multiprocessor: %d\n", pr.maxThreadsPerMultiProcessor);
            printf("  Max Thread Multi processor Count: %d\n", pr.multiProcessorCount);
            printf("  Multi processor count: %d\n\n", pr.multiProcessorCount);
        }
    }
}
