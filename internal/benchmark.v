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

type BenchmarkFn = fn (voidptr)

fn C.initialize(args int, argv &&char) int

fn C.add_benchmark(name &char, benchamark_fn BenchmarkFn)

fn C.run_benchmark()

fn C.shoutdown()

/// Init the benchamarks
pub fn init_benchamars() ? {
	cargs := utils.c_args()
	result := C.initialize(os.args.len, cargs)
	if result != 0 {
		return error('cmd line errors')
	}
}

pub fn add_benchmark(name string, benchamark_fn BenchmarkFn) {
	C.add_benchmark(&char(name.str), benchamark_fn)
}

pub fn run_benchmark() {
	C.run_benchmark()
}

pub fn shoutdown() {
	C.shoutdown()
}
