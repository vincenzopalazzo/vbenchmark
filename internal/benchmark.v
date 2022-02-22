module internal

import os
import utils

// declare the compiler flags
#flag -lbenchmark
#flag -lpthread
#flag -I c/

// include the google benchmark include
#include "benchmark.h"

fn C.initialize(args int, voidptr char)

/// Init the benchamarks
pub fn init_benchamars() { 
	C.initialize(os.args.len, utils.c_args())
}

