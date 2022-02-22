module main

import os

// declare the compiler flags
#flag -lbenchmark
#flag -lpthread
#flag -I c/

// include the google benchmark include
#include "benchmark.h"

fn C.initialize(args int, voidptr char)

fn add_benchmark_function(name string) { }

fn c_args() voidptr {
 	mut cargs := []&char{}
//    cargs << &char(cmdpath.str)
    for i in 0..os.args.len {
        cargs << &char(os.args[i].str)
    }

	return cargs.data
}

/// Init the benchamarks
fn init_benchamars() { 
	C.initialize(os.args.len, c_args())
}

fn main() {
	init_benchamars()
	println('Hello World!')
}
