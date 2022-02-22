/**
 * C bind for the google benchamark library
 * @author Vincenzo Palazzo (vincenzopalazzodev@gmail.com)
 */
#ifndef BENCHMARK_H
#define BENCHMARK_H

#include <functional>

#include <benchmark/benchmark.h>

extern "C" int initialize(int args, char **argv)
{
    benchmark::Initialize(&args, argv);
    if (benchmark::ReportUnrecognizedArguments(args, argv)) return 1;
    return 0;
}

extern "C" void run_benchmark()
{
    benchmark::RunSpecifiedBenchmarks();    
}

extern "C" void shoutdown()
{
    benchmark::Shutdown();
}

extern "C" typedef benchmark::State BenchmarkState;
extern "C" typedef void BenchmarkFn(BenchmarkState&);

extern "C" void add_benchmark(const char *name, void (*benchmark_fn)(benchmark::State&))
{
    BENCHMARK(*benchmark_fn)->Args({1<<10, 128});
}

// doc https://www.oracle.com/technical-resources/articles/it-infrastructure/mixing-c-and-cplusplus.html#c_from_cpp
#endif