module main

import internal

/// Init the benchamarks
pub fn run_benchamars() bool {
	exit_code := internal.run_benchamars()
	if exit_code != 0 {
		return false
	}
	return true
}

pub fn add_benchmark(name string, benchmark internal.BenchmarkFn) {
	internal.add_benchmark(name, benchmark)
}

fn assign_variable() {
	mut x := 1
	x = 2
}

fn main() {
	// add_benchmark('Insert in BSTree', inser_in_btree)
	add_benchmark('Assign variable', assign_variable)
	if !run_benchamars() {
		return
	}
}
