# Install virtual env python

## Overview

  - Install python by pyenv and pyenv-virtual.

## Setup

  - For example, installing python 3.6.4 and creating virtual env of python3.6.4 as' py36'.
  
    ```shell
    git clone https://github.com/tamutamu/my_py_dev.git
    
    pushd my_py_dev
    
    ./setup_pyenv.sh 3.6.4 py36
    
    # Confirm local versions
    pyenv versions
    
    popd
    ```

## Usage

  - usage command.

    ```shell
      
    # Set system.
    pyenv global py36
    python -V
        
    # Set current dir.
    pyenv local py36
    python -V
    ls -la  ### find '.python-version'
        
    # Set current shell.
    pyenv shell py36
    python -V
        
    # Add virtual env as 'py36_2'.
    pyenv virtualenv 3.6.4 py36_2
    pyenv versions
    pip list
    ```
