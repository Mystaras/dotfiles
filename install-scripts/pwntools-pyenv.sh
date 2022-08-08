export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

pyenv virtualenv pwns
pyenv activate pwns
pip install --upgrade pwntools
pyenv deactivate
