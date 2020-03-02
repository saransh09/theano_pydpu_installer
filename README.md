# theano_pydpu_installer
This is a shell script to install Theano, Keras and PyGPU for your system to run on GPU, I recently faced a lot of issues while trying to get PyGPU to work on my system for an old code. Therefore, I have written a shell script to install theano for python 2.7 in a virtual environment.

Usage<br>
Please run the shell script using the command <br>
`$ bash setup.sh`

This will create a new virtual environment theano_env and install all the necessary libraries required. (Caution, the scipt also includes some extra libraries that we needed at some point of time) you can edit the script to remove non important files.

an alias to activate the environment will be created in the bashrc, alias thean_env will activate the virtual environment.
