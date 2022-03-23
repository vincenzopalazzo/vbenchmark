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
