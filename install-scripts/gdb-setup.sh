#!/bin/bash

APPS="~/Apps/"

# GDB

## pwndbg
(cd $APPS && git clone https://github.com/pwndbg/pwndbg)
(cd $APPS/pwndbg && ./setup.sh)

sudo unlink /usr/bin/gdb-pwndbg
sudo ln -s ./gdb/gdb-pwndbg /usr/bin/gdb-pwndbg

## gef
(cd $APPS && curl -L https://gef.blah.cat/py --create-dirs -o gef/gdbinit-gef.py)

sudo unlink /usr/bin/gdb-gef
sudo ln -s ./gdb/gdb-gef /usr/bin/gdb-gef

## peda
(cd $APPS && git clone https://github.com/longld/peda.git .)

sudo unlink /usr/bin/gdb-peda
sudo ln -s ./gdb/gdb-peda /usr/bin/gdb-peda