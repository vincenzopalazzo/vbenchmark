module utils

import os

// Get the command line args
pub fn c_args() voidptr {
	mut cargs := []&char{}
	for i in 0 .. os.args.len {
		cargs << &char(os.args[i].str)
	}
	return cargs.data
}
