"-------------------------------------------"
"basic stuff
"-------------------------------------------"
set mouse=a
set nu
sy on
set noswapfile
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey
set termguicolors
"better lines
set number relativenumber
"better splits
set splitbelow splitright
"indent + indent size
set smartindent
set tabstop=2 softtabstop=2
set shiftwidth=2
"searching
set ignorecase smartcase
set incsearch
set hlsearch
"backups
set nobackup
set undodir=~/.vim/undodir
set undofile

set scrolloff=8

set noshowmode "replacement by status line
set signcolumn=number
"-------------------------------------------"
" Personnal binding
"-------------------------------------------"
" ---- VIM VANILLA ---- "
"define leader
let mapleader = " "

"move between tabs
nnoremap <Leader><left> :tabprev<cr>
nnoremap <Leader><right> :tabnext<cr>
nnoremap <F5> :tabnew<cr>
" Move between windows
noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l

nnoremap <F3> :sp<cr>
nnoremap <F4> :vsp<cr>
nnoremap <F11> :qall<cr>
nnoremap <F10> :w<cr>
inoremap <F10> <esc>:w<cr>
vnoremap <F10> <esc>:w<cr>
noremap <C-a> 0
noremap <C-e> $
inoremap <C-a> <esc>0i<right>
inoremap <C-e> <esc>$i

inoremap <leader>jj console.log('');<left><left><left>


"withdraw highlights
nnoremap <Leader>h :nohlsearch<CR>

source $HOME/.config/nvim/plugins.vim

