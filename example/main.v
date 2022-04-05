module main

import datatypes
import vbenchamark

fn assign_variable() {
	mut x := 1
	x = 2
	// TODO this is only an example, during
	// a benchmark you should never write to console
	// it is a waste of time.
	println(x)
}

fn inser_in_btree() {
	mut btree := datatypes.BSTree<int>{}
	for i in 0 .. 1000 {
		btree.insert(i)
	}
}

fn main() {
	vbenchamark.add_benchmark('Insert in BSTree', inser_in_btree)
	vbenchamark.add_benchmark('Assign variable', assign_variable)
	if !run_benchamars() {
		return
	}
}
