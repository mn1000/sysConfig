" be iMproved, required for Vundle
set nocompatible
filetype off

" Set the runtime path to include Vundle and initialize
set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Load plugins

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
