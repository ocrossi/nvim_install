if empty(glob('$HOME/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('$HOME/.config/nvim/autoload/plugged')
Plug  'gruvbox-community/gruvbox'
Plug 'folke/tokyonight.nvim'

"treesitter
"Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
Plug 'NarutoXY/themer.lua', { 'branch': 'dev' } "dev branch has more plugin support

Plug 'preservim/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'gcmt/taboo.vim'
Plug 'tpope/vim-fugitive'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'jiangmiao/auto-pairs'
" built in lsp for neovim
Plug 'neovim/nvim-lspconfig'
" nice lua status line
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
" Telescope requires plenary to function
Plug 'nvim-lua/plenary.nvim'
" The main Telescope plugin
Plug 'nvim-telescope/telescope.nvim'
" An optional plugin recommended by Telescope docs
Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make' }
" blamer and commit version checker 
Plug 'lewis6991/gitsigns.nvim'


" Autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'onsails/lspkind-nvim'
call plug#end()




" --- Colors

set background=dark
colorscheme tokyonight

nnoremap <C-f> :NERDTreeFocus<cr>
nnoremap <F2> :NERDTreeToggle<cr>	z

"telescope shortcuts
" find file in all project
nnoremap <leader>o :Telescope find_files<cr>
"find file in opened buffers
nnoremap <leader>b :Telescope buffers<cr>
" looks for string in file architecture
nnoremap <leader>f :Telescope live_grep<cr>

"require config files for lua plugins
lua require('ocrossi')

lua vim.g.lightline = {}
