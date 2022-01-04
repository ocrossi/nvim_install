#!/bin/bash

mkdir -p $HOME/.config/nvim/lua/ocrossi
cp ./init.vim ./plugins.vim $HOME/.config/nvim
cp ./init.lua ./telescope.lua ./lualine.lua ./gitsigns.lua ./lsp.lua ./treesitter.lua $HOME/.config/nvim/lua/ocrossi
#source $HOME/.config/nvim/init.vim
nvim --headless +PlugInstall +qall

# language servers installlation
npm install -g typescript typescript-language-server
npm i -g pyright
npm i -g bash-language-server
#brew install llvm #only for mac lets go to nix to improve script, for clangd support

