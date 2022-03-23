# vbenchmark

A V lang binding for google benchmark library

## Table of Content

- Introduction
- How to use
- License

## Introduction

TODO

## How to use

To use vbenchmark you need to install google benchmark on your system with the following command

```bash
git clone git@github.com:google/benchmark.git
sudo cmake --build "build" --config Release --target install
```

after that you can run the example in the repository with the following commands

```bash
git clone https://github.com/vincenzopalazzo/vbenchmark.git
cd vbenchmark
v install --git https://github.com/vincenzopalazzo/vbenchmark.git
make && ./vbenchmark --benchmark_out=result.json --benchmark_out_format=json
```

You should see as result somethings like that

```bash
2022-03-23T22:12:42+01:00
Running ./vbenchmark
Run on (4 X 2910.84 MHz CPU s)
CPU Caches:
  L1 Data 32 KiB (x2)
  L1 Instruction 32 KiB (x2)
  L2 Unified 256 KiB (x2)
  L3 Unified 3072 KiB (x1)
Load Average: 0.96, 1.21, 1.27
-----------------------------------------------------------
Benchmark                 Time             CPU   Iterations
-----------------------------------------------------------
Insert in BSTree    4030516 ns      4024936 ns          148
Assign variable        3.63 ns         3.62 ns    196105059

```

## License

TODO