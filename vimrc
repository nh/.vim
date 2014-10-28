set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'kien/ctrlp.vim'

Bundle 'Shougo/neocomplete'

Bundle 'Shougo/neosnippet'
Bundle 'Shougo/neosnippet-snippets'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on

autocmd InsertEnter,InsertLeave * set cul!
nnoremap <silent> <C-e> :wincmd k<CR>
nnoremap <silent> <C-u> :wincmd h<CR>
nnoremap <silent> <C-n> :wincmd h<CR>
nnoremap <silent> <C-o> :wincmd l<CR>
nnoremap <PageUp> 10k
nnoremap <PageDown> 10j
inoremap <PageUp> <C-O>10j
inoremap <PageDown> <C-O>10k
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
set list
set listchars=tab:▸\ ,eol:¬
" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"
let g:neocomplete#enable_at_startup = 1

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
set directory=~/.vim/tmp

nmap <F8> :TagbarToggle<CR>
let g:airline_powerline_fonts = 1
set hlsearch
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
