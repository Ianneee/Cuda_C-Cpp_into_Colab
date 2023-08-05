# Run Cuda C/C++ code into Google Colab

### Instructions
You can find the steps to follow inside the [Tutorial.ipynb](https://github.com/Ianneee/Cuda_C-Cpp_into_Colab/blob/main/Tutorial.ipynb) file, which you can open
directly within Colab and execute the required code to try it out immediately.

### TL;DR
Select `Runtime > Change runtime type > T4 GPU` into the notebook and use the following cells:

```
# Upload file
from google.colab import files
uploaded = files.upload()
```

```
# Compile
!nvcc -Werror all-warnings -o <OUTPUT_FILE> <INPUT_FILE>
```

```
# Run
!./<OUTPUT_FILE>
```
