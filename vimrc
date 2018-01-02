" be iMproved, required for Vundle
set nocompatible
filetype off

" Set the runtime path to include Vundle and initialize
set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Load plugins

" Git wrapper FUGITIVE.VIM
Plugin 'tpope/vim-fugitive'

" File tree NERDTree
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

" Solarized color scheme
Plugin 'altercation/vim-colors-solarized'

" End Vundle plugin loading, all plugins must be added before this line
call vundle#end()
filetype plugin indent on

" More commands for ViM

" Activate the mouse
set mouse=a

" Set tabs to 4 spaces
set tabstop=4
set expandtab
set smartindent

" Open NERDTree when starting without file or on directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" Close ViM if the only window left open is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Set colorscheme and syntax highlighting
syntax enable
set background=dark
let g:solarized_termtrans=1
colorscheme solarized
