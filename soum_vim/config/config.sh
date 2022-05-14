#!/bin/bash
echo "export PATH='/home/linuxbrew/.linuxbrew/bin':$PATH" >> ~/.bashrc
echo "alias vi='nvim'" >> ~/.bashrc
export PATH='/home/linuxbrew/.linuxbrew/bin':$PATH
alias vi='nvim'
# source ~/.bashrc
echo ":PlugInstall" >> ~/vim1.sh
echo ":sleep 15" >> ~/vim1.sh
echo ":q!" >> ~/vim1.sh
echo ":q!" >> ~/vim1.sh
nvim -s ~/vim1.sh
cd ~/.vim/plugged/coc.nvim && npm install

echo ":CocInstall coc-clangd" >> ~/vim2.sh
echo ":sleep 5" >> ~/vim2.sh
echo ":q!" >> ~/vim2.sh
echo ":q!" >> ~/vim2.sh
nvim -s ~/vim2.sh
pip3 install neovim
echo ":CocCommand clangd.install" >> ~/vim3.sh
echo ":sleep 10" >> ~/vim3.sh
echo ":q!" >> ~/vim3.sh
nvim -s ~/vim3.sh test.c
rm ~/vim1.sh ~/vim2.sh ~/vim3.sh
tail -f /dev/null
