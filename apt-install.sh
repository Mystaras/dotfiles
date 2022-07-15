APPS="~/Apps/"

sudo apt-get install build-essential git openjdk-11-jdk zsh tmux vim curl


# Zsh
touch ~/.zshrc
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
[sed -i 's/robbyrussell/bira/b' ~/.zshrc, "Change zsh theme"]

# APPS
mkdir $APPS

## Ghidra
(cd $APPS && curl -L -O "https://github.com/NationalSecurityAgency/ghidra/releases/download/Ghidra_10.1.4_build/ghidra_10.1.4_PUBLIC_20220519.zip")

## pwngdb
(cd $APPS && git clone https://github.com/pwndbg/pwndbg)
(cd $APPS/pwndbg && ./setup.sh)

## pyenv
