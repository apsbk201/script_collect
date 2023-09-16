set encoding=utf-8
set number relativenumber
syntax enable
set noswapfile
set mouse=a

set scrolloff=7
set backspace=indent,eol,start
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix

let mapleader = ' '

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sirver/ultisnips'


call plug#end()


colorscheme gruvbox
let g:python3_host_prog = '/usr/bin/python3' " -------- Set python 3 provider

let g:airline_theme='gruvbox'

if (has("termguicolors"))
    set termguicolors
endif

lua require 'colorizer'.setup()

" NERDCommenter
nmap <C-_> <Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERDCommenterToggle<CR>gv

" NERDTree
let NERDTreeQuitOnOpen=1
let g:NERDTreeMinimalUI=1
nmap <F2> :NERDTreeTOggle<CR>

" Tabs
let g:airline#extensions#line#enabled=1
let g:airline#extensions#line#fnamemode=':t'
nmap <leader>1 :bp<CR>
nmap <leader>2 :bn<CR>
nmap <C-w> :bd<CR>

