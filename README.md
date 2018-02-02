# Install virtual env python

## Overview

  - Install python by pyenv and pyenv-virtual.

## Setup

  - Setup example, python 3.6.4 and virtual env name 'py36'.
  
    ```shell
    git clone https://github.com/tamutamu/my_py_dev.git
    pushd my_py_dev
    ./setup_pyenv.sh 3.6.4 py36
    
    # Confirm local versions
    pyenv versions
    
    # Set system.
    pyenv global py36
    
    # Set current dir.
    pyenv local py36
    ls -la
    
    # Set current shell.
    pyenv shell py36
    ```
