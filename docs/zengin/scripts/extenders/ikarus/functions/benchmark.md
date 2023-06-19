Sure! Here's the documentation for the functions related to Zeitmessung / Benchmark / Speedup:

# Zeitmessung / Benchmark / Speedup

## Time Measurement

### `int MEM_GetSystemTime()`

**Description:** This function retrieves the system time.

**Signature:**
```cpp
int MEM_GetSystemTime();
```

**Return Value:**
- Returns the system time in milliseconds.

### `int MEM_GetPerformanceCounter()`

**Description:** This function retrieves the performance counter.

**Signature:**
```cpp
int MEM_GetPerformanceCounter();
```

**Return Value:**
- Returns the value of the performance counter.

## Benchmark

### `void MEMINT_Benchmark_Helper()`

**Description:** Helper function for benchmarking.

**Signature:**
```cpp
void MEMINT_Benchmark_Helper();
```

### `int MEMINT_Benchmark(func f, int times, int unit)`

**Description:** This function performs benchmarking of a given function.

**Signature:**
```cpp
int MEMINT_Benchmark(func f, int times, int unit);
```

**Parameters:**
- `f`: The function to be benchmarked.
- `times`: The number of times the function should be executed.
- `unit`: The unit of measurement for the benchmark results.

**Return Value:**
- Returns the benchmark result based on the specified unit of measurement.

### `int MEM_BenchmarkMS(func f)`

**Description:** This function performs benchmarking of a function and returns the result in milliseconds.

**Signature:**
```cpp
int MEM_BenchmarkMS(func f);
```

**Parameters:**
- `f`: The function to be benchmarked.

**Return Value:**
- Returns the benchmark result in milliseconds.

### `int MEM_BenchmarkMS_N(func f, int n)`

**Description:** This function performs benchmarking of a function `n` times and returns the average result in milliseconds.

**Signature:**
```cpp
int MEM_BenchmarkMS_N(func f, int n);
```

**Parameters:**
- `f`: The function to be benchmarked.
- `n`: The number of times the function should be executed.

**Return Value:**
- Returns the average benchmark result in milliseconds.

### `int MEM_BenchmarkMMS(func f)`

**Description:** This function performs benchmarking of a function and returns the result in microseconds.

**Signature:**
```cpp
int MEM_BenchmarkMMS(func f);
```

**Parameters:**
- `f`: The function to be benchmarked.

**Return Value:**
- Returns the benchmark result in microseconds.

### `int MEM_BenchmarkMMS_N(func f, int n)`

**Description:** This function performs benchmarking of a function `n` times and returns the average result in microseconds.

**Signature:**
```cpp
int MEM_BenchmarkMMS_N(func f, int n);
```

**Parameters:**
- `f`: The function to be benchmarked.
- `n`: The number of times the function should be executed.

**Return Value:**
- Returns the average benchmark result in microseconds.

### `int MEM_BenchmarkPC(func f)`

**Description:** This function performs benchmarking of a function and returns the result in performance counter ticks.

**Signature:**
```cpp
int MEM_BenchmarkPC(func f);
```

**Parameters:**
- `f`: The function to be benchmarked.

**Return Value:**
- Returns the benchmark result in performance counter ticks.

### `int MEM_BenchmarkPC_N(func f, int n)`

**Description:** This function performs benchmarking of a function `n` times and returns the average result in performance counter ticks.

**Signature:**
```cpp
int MEM_BenchmarkPC_N

(func f, int n);
```

**Parameters:**
- `f`: The function to be benchmarked.
- `n`: The number of times the function should be executed.

**Return Value:**
- Returns the average benchmark result in performance counter ticks.

That covers the documentation for the Zeitmessung / Benchmark / Speedup functions. Let me know if there's anything else I can assist you with!