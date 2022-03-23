module internal

import os
import utils

// declare the compiler flags
#flag -lbenchmark
#flag -lpthread
#flag -std=c++11
#flag -I c/

// include the google benchmark include
#include "benchmark.h"

struct C.State {}

type BenchmarkFn = fn ()

[keep_args_alive]
fn C.initialize(args int, argv voidptr) int

[keep_args_alive]
fn C.add_benchmark(name &char, benchamark_fn BenchmarkFn)

/// Init the benchamarks
pub fn run_benchamars() int {
	return C.initialize(os.args.len, utils.c_args())
}

pub fn add_benchmark(name string, benchamark_fn BenchmarkFn) {
	C.add_benchmark(&char(name.str), benchamark_fn)
}
