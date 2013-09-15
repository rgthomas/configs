set nocompatible

" vundle setup
filetype off

if has("unix")
    set rtp+=~/.vim/bundle/vundle/
elseif has("win32") || has("win64")
    set rtp+=~/vimfiles/bundle/vundle/
endif
call vundle#rc()

Bundle 'altercation/vim-colors-solarized'
Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'nanotech/jellybeans.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-fugitive'

filetype plugin indent on


" indentation & syntax
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
syntax on
set cinoptions=:0,g0,N-s


" color settings
se t_Co=256
set background=dark
colorscheme jellybeans


" searching and moving
set backspace=indent,eol,start
set gdefault
set hlsearch
set ignorecase
set incsearch
set smartcase
set whichwrap+=<,>,h,l,[,]
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" turn off vim's regex chars
nnoremap / /\v
vnoremap / /\v

" use tab to match bracket pairs
nnoremap <tab> %
vnoremap <tab> %


" remapped keys for convenience
nnoremap ; :
inoremap fj <esc>


" other settings
set colorcolumn=120
set cursorline
set laststatus=2
set number
set relativenumber
set ruler
set scrolloff=15
set showcmd
set showmatch
set showmode
set ttyfast

:au FocusLost * :set number
:au FocusGained * :set relativenumber
:autocmd InsertEnter * :set number
:autocmd InsertLeave * :set relativenumber


" leader commands
let mapleader=" "
nnoremap <leader><space> :noh<cr>
nnoremap <leader>V :source $MYVIMRC<cr>

nnoremap <leader>t :tabnew<cr>
nnoremap <leader>d :tabp<cr>
nnoremap <leader>f :tabn<cr>

nnoremap <leader>1 O/*!<cr>\file<tab><cr>\author<tab><cr>\brief<tab><cr>/<cr><esc>kkkkA
nnoremap <leader>2 O/*!<cr><cr>/<up><space>
nnoremap <leader>3 A<tab>//!<<space>


" wildignore
set wildignore+=*.git,*.svn,*.o,*.lib,*.pyd
if has('unix')
    set wildignore+=*.a,*.dylib,*.dSYM,*.DS_Store
elseif has('win32') || has('win64')
    set wildignore+=*.dll,*.suo,*.sdf
endif


" GUI settings
if has("gui_macvim")
    set guifont=Menlo:h14
elseif has("gui_running")
    set guifont=Consolas:h10
    set lines=65 columns=130
endif


" CtrlP
let g:ctrlp_working_path_mode='r'
let g:ctrlp_root_markers=['.ctrlp']
if has('unix')
    let g:ctrlp_custom_ignore={
        \ 'dir':    '\v[\/](build|doc)$'
        \ }
elseif has('win32') || has('win64')
    let g:ctrlp_custom_ignore={
        \ 'dir':    '\v[\/](build|doc)$',
        \ 'files':  '\v*\.(exe)$'
        \ }
endif
nnoremap <leader>p :CtrlPMixed<cr>

" NERDTree
let NERDTreeQuitOnOpen=1
nnoremap <leader>a :NERDTreeToggle<cr>
nnoremap <leader>s :NERDTreeFind<cr>

" fugitive
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gD :diffoff<cr>


