execute pathogen#infect()
syntax on
filetype plugin indent on

nnoremap <silent> <C-e> :wincmd k<CR>
nnoremap <silent> <C-u> :wincmd h<CR>
nnoremap <silent> <C-n> :wincmd h<CR>
nnoremap <silent> <C-o> :wincmd l<CR>
noremap h u
noremap j n
noremap k o
noremap l e
noremap n h
noremap u k
noremap e j
noremap o l
noremap : t
noremap ; T
noremap t :
noremap T ;
noremap w b
noremap W B
noremap b w
noremap B W

set t_Co=256
set background=dark

colorscheme wombat256mod
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE
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
autocmd! BufNewFile,BufRead *.pde setlocal ft=arduino
autocmd! BufNewFile,BufRead *.ino setlocal ft=arduino
set scrolloff=10
set mouse=a
set ttymouse=xterm2
let g:ctrlp_show_hidden=1
set splitright
set splitbelow
ca t CtrlP
if has("python")
    python from powerline.vim import setup as powerline_setup
    python powerline_setup()
    python del powerline_setup
endif
set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim
set laststatus=2
