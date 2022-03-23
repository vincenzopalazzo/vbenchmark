/**
 * C bind for the google benchamark library
 * @author Vincenzo Palazzo (vincenzopalazzodev@gmail.com)
 */
#ifndef BENCHMARK_H
#define BENCHMARK_H

#include <benchmark/benchmark.h>

using namespace benchmark;

extern "C" {
    typedef benchmark::State BenchmarkState; 
    typedef void BenchmarkFn(BenchmarkState&);


    int initialize(int argc, char **argv) {
        benchmark::Initialize(&argc, argv);
       
        if (benchmark::ReportUnrecognizedArguments(argc, argv)) return 1;
        benchmark::RunSpecifiedBenchmarks();
        benchmark::Shutdown();
        return 0;
    }

    void iterate_over_function(BenchmarkState &state, void (*fn)(BenchmarkState&)) {
            for (auto _ : state)
                fn(state);        
    }

    void add_benchmark(const char *name, void (*benchmark_fn)(BenchmarkState&)) {
        benchmark::RegisterBenchmark(name, iterate_over_function, benchmark_fn);
    }

}
// doc https://www.oracle.com/technical-resources/articles/it-infrastructure/mixing-c-and-cplusplus.html#c_from_cpp
#endif