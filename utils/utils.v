module utils

import os

// Get the command line args
pub fn c_args() &&char {
	mut cargs := []&char{}
	for v_arg in os.args {
		println(v_arg.str())
		cargs << &char(v_arg.str)
	}
	cargs << &char(0)
	return cargs.data
}
