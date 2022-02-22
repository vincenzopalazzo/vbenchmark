module internal

import os
import utils

// declare the compiler flags
#flag -lbenchmark
#flag -lpthread
#flag -I c/

// include the google benchmark include
#include "benchmark.h"

type BenchmarkFn = fn (voidptr)

fn C.initialize(args int, argv &&char)

fn C.add_benchmark(name &char, benchamark_fn BenchmarkFn)

/// Init the benchamarks
pub fn init_benchamars() {
	C.initialize(os.args.len, utils.c_args())
}

pub fn add_benchmark(name string, benchamark_fn BenchmarkFn) {
	C.add_benchmark(&char(name.str), benchamark_fn)
}
