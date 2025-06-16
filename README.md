---

# C/C++ Building and Testing GitHub Action

This reusable workflow is designed to **build and test C/C++ projects** using either **CMake** or **Make**, and with **GCC** or **Clang** as the compiler. It can be called from other workflows to automate CI pipelines for C/C++ projects.

---

## Features

-  Supports both `gcc` and `clang` compilers
-  Supports both `make` and `cmake` build systems
-  Runs unit tests via `test_exec` or a `run_tests.sh` script
-  Uploads logs for build and test steps
-  Summarizes results in the GitHub Actions step summary
-  Runs inside a Docker container for a consistent environment

---

## Inputs

| Input          | Description                         | Required | Accepted Values         |
|----------------|-------------------------------------|----------|--------------------------|
| `compiler`     | Compiler to use for the build       | ✅ Yes   | `gcc`, `clang`           |
| `build-system` | Build system to compile the code    | ✅ Yes   | `make`, `cmake`          |

---

## Usage Example

```yaml
jobs:
  call-build-and-test:
    uses: your-org/your-repo/.github/workflows/buildtestccpp.yml@main
    with:
      compiler: gcc
      build-system: cmake
```

---

## Expected Project Structure

The workflow assumes the following structure in your repository:

```
.
├── src/
│   ├── main.cpp
│   └── math.cpp
├── tests/
│   └── test.cpp
├── CMakeLists.txt        # If using CMake
├── Makefile              # If using Make
└── run_tests.sh          # (Optional) Custom test runner script
```

⚠️ Ensure your test executable is named `test_exec` or a `run_tests.sh` script is present.

---

##  Output

*  Logs from build and test steps are saved to the `logs/` directory and uploaded as artifacts.
*  A GitHub Actions **summary** is appended showing whether:

---

### Debugging Tips

* **Test Executable Location**:
  - If you're using **Make**, the `test_exec` binary should be present in the **root directory**.
  - If you're using **CMake**, the `test_exec` binary should be built under the **`build/` directory**.

This is handled internally by the `run_tests.sh` script:

```bash
# CMake
./build/test_exec

# Make
./test_exec
```

Make sure the correct path is used or the script will exit with a "not found" error.

---
