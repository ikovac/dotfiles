let mapleader=" "

syntax enable
set termguicolors
set number
set relativenumber
set expandtab
set shiftwidth=2
set tabstop=2
set clipboard=unnamedplus
set termguicolors
set background=dark
set scrolloff=8
set ignorecase
set updatetime=100
set smartcase
set nowrap
set cc=80 

noremap <C-l> <C-w>l
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
nnoremap <leader>p :GFiles<CR>
nnoremap <C-p> :Files<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

call plug#begin()
  Plug 'preservim/nerdtree'
  Plug 'arcticicestudio/nord-vim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'mhinz/vim-signify'
call plug#end()

let g:nord_italic = 1
colorscheme nord
