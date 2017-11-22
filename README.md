# Using Amazon Web Services (AWS) GPU for Deep Learning
#### CUDA, cuDNN, TensorFlow, Caffe, and other useful packages for Ubuntu 16.04

### Useful Packages and Dependencies
```
# installs essential packages through apt-get and pip
bash aws_setup.sh
```

### Install CUDA 8.0
```
bash install_cuda_8.sh
```
### Install cuDNN 6.0 for CUDA 8.0 (manual steps)

* Make an account on [NVIDIA](https://developer.nvidia.com) and download [cuDNN](https://developer.nvidia.com/cudnn).
* After the survey, select "cuDNN v6.0, for CUDA 8.0".
* Download "cuDNN v6.0 Library for Linux" (should be a tar file).
* Transfer (you can use `scp`) the `.tgz` file from your local computer to your EC2 instance.
* Install cuDNN from your ec2 instance with `bash install_cuDNN.sh`.

### Install TensorFlow and Monitoring Tools for Python 2.7
```
pip install tensorflow-gpu
bash install_monitoring_tools.sh
```

### Install Caffe
```
git clone https://github.com/BVLC/caffe.git
cd caffe
cp Makefile.config.example Makefile.config
```

Manual Step: edit `Makefile.config` to set `USE_CUDNN := 1`.
```
bash caffe_dependencies.sh
make all
make pycaffe
make test
make runtest
```
Change the path name and add the following line to your `.bashrc` file:
```
export PYTHONPATH="${PYTHONPATH}:/path/to/caffe/python"
```
Source your `.bashrc` file.
```
source ~/.bashrc
```
