module main

import datatypes
import vbenchmark

fn assign_variable() {
	mut x := 1
	x = 2
}

fn inser_in_btree() {
	mut btree := datatypes.BSTree<int>{}
	for i in 0 .. 1000 {
		btree.insert(i)
	}
}

fn main() {
	vbenchmark.add_benchmark('Insert in BSTree', inser_in_btree)
	vbenchmark.add_benchmark('Assign variable', assign_variable)
	if !vbenchmark.run_benchamars() {
		return
	}
}
