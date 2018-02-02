#!/bin/bash -eu


### check & help
. usage.sh


declare -xr PY_VERSOIN=${1}
declare -xr ENV_NAME=${2}

function no_check_bashrc(){
  set +eu
  . ~/.bashrc
  set -eu
}


### Depends module
yum -y groupinstall "Development Tools"
yum -y install zlib-devel bzip2 bzip2-devel readline-devel sqlite sqlite-devel \
       openssl-devel xz


### pyenv
git clone https://github.com/yyuu/pyenv.git ~/.pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
no_check_bashrc


### pyenv-virtualenv
git clone https://github.com/yyuu/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc
no_check_bashrc

pyenv install ${PY_VERSOIN}
pyenv virtualenv ${PY_VERSOIN} ${ENV_NAME}


# For current shell.
exec $SHELL -l
