module main

import internal
import datatypes

/// Init the benchamarks
pub fn run_benchamars() {
	internal.init_benchamars()
}

pub fn add_benchmark(name string, benchmark internal.BenchmarkFn) {
	internal.add_benchmark(name, benchmark)
}

fn inser_in_btree(state voidptr) {
	/*
	mut btree := datatypes.BSTree<int>{}
	for i in 0..2 {
		btree.insert(i)
	}*/
}

fn assign_variable(state voidptr) {
	mut x := 1
	x = 2
}

fn main() {
	add_benchmark('Insert in BSTree', inser_in_btree)
	add_benchmark('Assign variable', assign_variable)
	run_benchamars()
}
