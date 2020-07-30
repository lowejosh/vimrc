" reload .vimrc when editing it: :so %
set nocompatible               " be iMproved
filetype off                   " required!
set nu " show line numbers
set hlsearch " highlight search terms

" Clear last search highlighting
nnoremap <c-m> :noh<cr>

" Easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" split windows down and right
set splitbelow
set splitright

" Insert blank lines without going into insert mode
nmap go o<esc>
nmap gO O<esc>

" Shortcut for =>
imap <C-l> <Space>=><Space>

" indent/unindent visual mode selection with tab/shift+tab
vmap <tab> >gv
vmap <s-tab> <gv

set ignorecase
set smartcase " do case insensitive search
set incsearch                     " Find as you type search
set nowrap                        " don't wrap lines
set tabstop=2 shiftwidth=2        " a tab is two spaces (or set this to 4)
set expandtab                     " use spaces, not tabs (optional)
set hidden                        " Handle multiple buffers better.
set title                         " Set the terminal's title
set directory=/tmp                " Keep swap files in one location
set visualbell                    " less beeping! stop NERD tree from beeping

syntax enable
set background=dark

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux


let &t_Co=256

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree' "File tree
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } "Fuzzy searching
Plug 'junegunn/fzf.vim' "Fuzzy searching 
Plug 'jiangmiao/auto-pairs' "Automatic pairs {}, (), etc
Plug 'tpope/vim-commentary' "Commenting with gc and gcc
Plug 'othree/yajs.vim' "Javascript syntax
Plug 'mxw/vim-jsx' "JSX syntax
" Plug 'drewtempelmeyer/palenight.vim' "Colour scheme
Plug 'morhetz/gruvbox' "Colour scheme
Plug 'itchyny/lightline.vim' "Better footer
" Plug 'dense-analysis/ale' "Linting
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Initialize plugin system
call plug#end()

"" Additional options
map <C-o> :NERDTreeToggle<CR>
""move to the next ALE warning / error
"nnoremap ]r :ALENextWrap<CR>     
""move to the previous ALE warning / error
"nnoremap [r :ALEPreviousWrap<CR> 
"
colorscheme gruvbox
let g:lightline = { 'colorscheme': 'gruvbox' }
map <Space> <Leader>
nmap <leader>gd <Plug>(coc-definitions)
nmap <leader>gr <Plug>(coc-references)
nnoremap <C-p> :GFiles<CR>
" Clear highlighting on escape in normal mode
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[
command! -nargs=0 Prettier :CocCommand prettier.formatFile "Prettier
nmap <leader>f  <Plug>(coc-format-selected)

" Formatters
"npm install -g prettier
au FileType javascript setlocal formatprg=prettier
au FileType javascript.jsx setlocal formatprg=prettier
au FileType typescript setlocal formatprg=prettier\ --parser\ typescript
au FileType html setlocal formatprg=js-beautify\ --type\ html
au FileType scss setlocal formatprg=prettier\ --parser\ css
au FileType css setlocal formatprg=prettier\ --parser\ css

" " Linters
" let g:ale_linters = {
" \   'python': ['flake8', 'pylint'],
" \   'javascript': ['eslint'],
" \   'vue': ['eslint']
" \}
" let g:ale_fixers = {
"   \    'javascript': ['eslint'],
"   \    'typescript': ['prettier', 'tslint'],
"   \    'vue': ['eslint'],
"   \    'scss': ['prettier'],
"   \    'html': ['prettier'],
"   \    'reason': ['refmt']
" \}
" let g:ale_fix_on_save = 1


" True Colors
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" Testing syntax stuff
augroup SyntaxSettings
    autocmd!
    autocmd BufNewFile,BufRead *.tsx set filetype=typescript
augroup END

