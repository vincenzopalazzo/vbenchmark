/**
 * C bind for the google benchamark library
 * @author Vincenzo Palazzo (vincenzopalazzodev@gmail.com)
 */
#ifndef BENCHMARK_H
#define BENCHMARK_H

#include <benchmark/benchmark.h>

extern "C" void initialize(int args, char **argv)
{
    benchmark::Initialize(&args, argv);
}

// doc https://www.oracle.com/technical-resources/articles/it-infrastructure/mixing-c-and-cplusplus.html#c_from_cpp
#endif