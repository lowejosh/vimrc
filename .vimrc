set nocompatible              " be iMproved, required
filetype off                  " required
filetype plugin indent on
set number
let g:solarized_termcolors=256
set t_Co=256
syntax enable
set background=dark
colorscheme solarized

" tab stuff
set tabstop=4
set shiftwidth=4
set expandtab

" maps
"map tree toggle to ctrl-o
map <C-o> :NERDTreeToggle<CR>

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'git://github.com/raimondi/delimitMate'
Plugin 'git://github.com/nathanaelkane/vim-indent-guides'
Plugin 'git://github.com/vim-airline/vim-airline'
Plugin 'git://github.com/vim-syntastic/syntastic'
Plugin 'git://github.com/ctrlpvim/ctrlp.vim'
Plugin 'git://github.com/itchyny/lightline.vim'
Plugin 'git://github.com/tpope/vim-eunuch'
Plugin 'git://github.com/tpope/vim-surround'
Plugin 'git://github.com/scrooloose/nerdtree'
Plugin 'git://github.com/tomasiser/vim-code-dark'
Plugin 'git://github.com/airblade/vim-gitgutter'
Plugin 'git://github.com/mattn/emmet-vim'
Plugin 'git://github.com/pangloss/vim-javascript'
Plugin 'git://github.com/mxw/vim-jsx'
Plugin 'git://github.com/w0rp/ale'
Plugin 'git://github.com/altercation/vim-colors-solarized'




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
