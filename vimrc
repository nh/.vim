execute pathogen#infect()
syntax on
filetype plugin indent on

autocmd vimenter * if !argc() | NERDTree | endif

noremap h u
noremap j n
noremap k o
noremap l e
noremap n h
noremap u k
noremap e j
noremap o l
noremap : '
noremap ' :

set t_Co=256

colorscheme wombat256mod
set number
set expandtab
set tabstop=4
set autoindent
set softtabstop=4
set shiftwidth=4

set guioptions-=T
set guioptions-=m
set encoding=utf-8
set guifont=Consolas\ 10

set linespace=1
set dir=~/tmp

nmap <F8> :TagbarToggle<CR>
let g:airline_powerline_fonts = 1


cmap w!! w !sudo tee >/dev/null %
set noshelltemp
set shell=/bin/bash
