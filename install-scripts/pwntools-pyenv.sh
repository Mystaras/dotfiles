#!/bin/bash

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

pyenv virtualenv pwn
pyenv activate pwn
pip install --upgrade pwntools
pyenv deactivate
