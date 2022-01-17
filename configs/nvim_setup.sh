#!/bin/bash

#UHOME='/home/nvimuser/'

mkdir -p ~/.config/nvim/lua/ocrossi
#cp ./init.vim ./plugins.vim $UHOME/.config/nvim
cp ./init.vim ./plugins.vim ~/.config/nvim
#cp ./init.lua ./telescope.lua ./lualine.lua ./gitsigns.lua ./lsp.lua ./treesitter.lua $UHOME/.config/nvim/lua/ocrossi
cp ./*.lua ~/.config/nvim/lua/ocrossi

#source $UHOME/.config/nvim/init.vim
nvim +PlugInstall +qall

# language servers installlation
sudo npm install -g typescript typescript-language-server
sudo npm i -g pyright
sudo npm i -g bash-language-server
#brew install llvm #only for mac lets go to nix to improve script, for clangd support
