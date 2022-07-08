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
set smartcase
set nowrap
set cc=80 

call plug#begin()
  Plug 'arcticicestudio/nord-vim'
call plug#end()

let g:nord_italic = 1
colorscheme nord

let g:netrw_banner = 0

