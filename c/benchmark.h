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
    if (benchmark::ReportUnrecognizedArguments(args, argv)) return 1;
    benchmark::RunSpecifiedBenchmarks();
    benchmark::Shutdown();
}

extern "C" typedef benchmark::State BenchmarkState;
extern "C" typedef void BenchmarkFn(BenchmarkState&);

extern "C" void add_benchmark(const char *name, BenchmarkFn benchmark_fn)
{
    //BENCHMARK(benchmark_fn);
}

// doc https://www.oracle.com/technical-resources/articles/it-infrastructure/mixing-c-and-cplusplus.html#c_from_cpp
#endif