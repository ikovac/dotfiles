let mapleader=" "

syntax enable
set termguicolors
set number
set relativenumber
set expandtab
set shiftwidth=2
set tabstop=2
set clipboard=unnamedplus
set background=dark
set scrolloff=8
set ignorecase
set updatetime=100
set undofile
set undodir=~/.vim/undodir
set nowritebackup
set nobackup
set noswapfile
set smartcase
set nowrap
set cc=80 
set signcolumn=yes
set cursorline

au ColorScheme * hi Error NONE

noremap <C-l> <C-w>l
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
nnoremap <leader>p :GFiles<CR>
nnoremap <C-p> :Files<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>

" Use K to show documentation in preview window.
nnoremap <silent> <leader>k :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)
nmap <leader>f  <Plug>(coc-fix-current)
nmap <leader>ac  <Plug>(coc-codeaction)

call plug#begin()
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'preservim/nerdtree'
  Plug 'arcticicestudio/nord-vim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'mhinz/vim-signify'
  Plug 'tpope/vim-commentary'
call plug#end()

let g:nord_italic = 1
colorscheme nord
