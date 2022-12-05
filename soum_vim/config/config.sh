#!/bin/bash

nvim -s ~/vim1.sh
cd ~/.vim/plugged/coc.nvim && npm install
nvim -s ~/vim2.sh
pip3 install neovim
nvim -s ~/vim3.sh test.c
rm ~/vim1.sh ~/vim2.sh ~/vim3.sh
