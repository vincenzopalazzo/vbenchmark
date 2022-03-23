/**
 * C bind for the google benchamark library
 * @author Vincenzo Palazzo (vincenzopalazzodev@gmail.com)
 */
#ifndef BENCHMARK_H
#define BENCHMARK_H

#include <iostream>
#include <benchmark/benchmark.h>

using namespace benchmark;

extern "C" {
    typedef benchmark::State BenchmarkState; 
    typedef void BenchmarkFn(BenchmarkState&);


    int initialize(int argc, char **argv) {
        benchmark::Initialize(&argc, argv);
        for (int i = 0; i < argc; i++)
            std::cout << argv[i] << ", ";
        if (benchmark::ReportUnrecognizedArguments(argc, argv)) return 1;
        benchmark::RunSpecifiedBenchmarks();
        benchmark::Shutdown();
        return 0;
    }

    void add_benchmark(const char *name, void (*benchmark_fn)(benchmark::State&)) {
        benchmark::RegisterBenchmark(name, benchmark_fn);
    }

}
// doc https://www.oracle.com/technical-resources/articles/it-infrastructure/mixing-c-and-cplusplus.html#c_from_cpp
#endif