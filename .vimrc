" === PREFERENCES ===
set nocompatible              " be iMproved, required
filetype off                  " required
filetype plugin indent on
set number
let g:solarized_termcolors=256
set t_Co=256
colorscheme solarized
syntax enable

" === TABS ===
set tabstop=4
set shiftwidth=4
set expandtab

" === MAPS ===
"map tree toggle to ctrl-o
map <C-o> :NERDTreeToggle<CR>

" installs plug.vim if not already
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" === PLUGINS ===
call plug#begin('~/.vim/plugged')
Plug 'nanotech/jellybeans.vim'
Plug 'git://github.com/raimondi/delimitMate'
Plug 'git://github.com/nathanaelkane/vim-indent-guides'
Plug 'git://github.com/vim-syntastic/syntastic'
Plug 'git://github.com/ctrlpvim/ctrlp.vim'
Plug 'git://github.com/itchyny/lightline.vim'
Plug 'git://github.com/tpope/vim-eunuch'
Plug 'git://github.com/tpope/vim-surround'
Plug 'git://github.com/scrooloose/nerdtree'
Plug 'git://github.com/airblade/vim-gitgutter'
Plug 'git://github.com/mattn/emmet-vim'
Plug 'git://github.com/pangloss/vim-javascript'
Plug 'git://github.com/mxw/vim-jsx'
Plug 'git://github.com/w0rp/ale'
Plug 'git://github.com/altercation/vim-colors-solarized'
call plug#end()
