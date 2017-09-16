set nocompatible              " be iMproved, required
filetype off                  " required
filetype plugin indent on
set number

" tab shit
set tabstop=4
set shiftwidth=4
set expandtab


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'git://github.com/Valloric/YouCompleteMe'
Plugin 'nanotech/jellybeans.vim'
Plugin 'git://github.com/raimondi/delimitMate'
Plugin 'git://github.com/nathanaelkane/vim-indent-guides'
Plugin 'git://github.com/vim-airline/vim-airline'
Plugin 'git://github.com/vim-syntastic/syntastic'
Plugin 'git://github.com/SirVer/UltiSnips'
Plugin 'git://github.com/ctrlpvim/ctrlp.vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
