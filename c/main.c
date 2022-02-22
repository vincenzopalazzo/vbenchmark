#include "benchmark.h"

static void fn(BenchmarkState &state) {
    int x = 0;
    x = 1;
}

int main(int argc, char **argv)
{
    initialize(argc, argv); 
    add_benchmark("hello", fn);
    return 0;
}