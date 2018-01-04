"
" Some General Settings
"

" Be iMproved, turn off vi compatible
set nocompatible

"
" Vundle Plugin Management
"

" Set the runtime path to include Vundle and initialize
filetype off        " required for Vundle
set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Load plugins

" Git wrapper FUGITIVE.VIM
Plugin 'tpope/vim-fugitive'

" File tree NERDTree
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

" Useful finder for files, buffers, mru, etc.
Plugin 'ctrlpvim/ctrlp.vim'

" Use Airline status bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Solarized color scheme
Plugin 'altercation/vim-colors-solarized'

" Use developer icons (nerd font)
Plugin 'ryanoasis/vim-devicons'

" End Vundle plugin loading, all plugins must be added before this line
call vundle#end()
filetype plugin indent on   " turn back on

"
" More commands and configuration for ViM
"

" Set encoding to UTF-8
set encoding=utf8

" Set font
set guifont=SauceCodePro\ Nerd\ Font\ 11

" Activate the mouse
set mouse=a

" Set tabs to 4 spaces
set tabstop=4
set expandtab
set smartindent

" Configure buffers
set hidden                      " Activate hidden buffers
noremap <Tab>   :bnext<CR>      " Tab for next buffer
noremap <S-Tab> :bprevious<CR>  " Shift-Tab for previous buffer

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

" Configure Airline status bar
let g:airline_powerline_fonts=1
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'
