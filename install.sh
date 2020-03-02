virtualenv -p /usr/bin/python2.7 theano_env
curr=$PWD
source $PWD/theano_env/bin/activate
echo "alias theano_env=\"source $PWD/theano_env/bin/activate\"" >> ~/.bashrc
source ~/.bashrc
pip install pyyaml
pip install numpy==1.12
pip install scipy==1.2.1
pip install pillow==6.2.2
pip install opencv-python
pip install Cython==0.25
pip install mako==1.1.1
pip install nose==1.3.7
pip install sphinx==1.8.5
pip install matplotlib
pip install pydot-ng==2.0.0
pip install mkl
pip install pandas
pip install keras==1.2
pip install h5py
pip install git+https://github.com/Theano/Theano.git#egg=Theano
git clone https://github.com/Theano/libgpuarray.git
cd libgpuarray
libgpu_path=$PWD
# git checkout tags/v0.6.5 -b v0.6.9
rm -rf ~/.local/lib/libgpuarray* ~/.local/include/gpuarray
rm -rf build Build
mkdir Build
cd Build
cmake .. -DCMAKE_INSTALL_PREFIX=~/.local -DCMAKE_BUILD_TYPE=Release
make
make install
cd ..
echo "CPATH=$CPATH:~/.local/include
LIBRARY_PATH=$LIBRARY_PATH:~/.local/lib
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:~/.local/lib" >> ~/.bashrc
source ~/.bashrc
export CPATH=$CPATH:~/.local/include
export LIBRARY_PATH=$LIBRARY_PATH:~/.local/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:~/.local/lib
python setup.py build
python setup.py install
cd
