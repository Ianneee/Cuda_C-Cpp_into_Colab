# Run Cuda C/C++ code into Google Colab

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

### Instructions
You can find the steps to follow inside the [Tutorial.ipynb](https://github.com/Ianneee/Cuda_C-Cpp_into_Colab/blob/main/Tutorial.ipynb) file, which you can open
directly within Colab and execute the required code to try it out immediately.

### Tips

- When you're not using the notebook for a while, remember to turn it off clicking on `Runtime > Disconnect and delete runtime`, otherwise you might unnecessarily exhaust the available time you have.\
The available time is not well-defined, not even for the paid option. For the free version it seems to be 12 hours. In general, they refer to compute units as official metric, but they don't specify how much time or usage each unit represents. This allows them to change the value of compute units as they please and take advantage of you as they wish.

- Time's up, wait tomorrow or change account.

- Remember that you're on an Ubuntu virtual machine; you can use any shell command and install what you need. Of course, you can't use commands that launch GUI applications (like htop).
