set nocompatible

filetype off

if has("unix")
    set rtp+=~/.vim/bundle/vundle/
elseif has("win32") || has("win64")
    set rtp+=~/vimfiles/bundle/vundle/
endif
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'nanotech/jellybeans.vim'

filetype plugin indent on

set autoindent
set expandtab
set shiftwidth=4
set softtabstop=4

set showmatch
set hlsearch
set incsearch
set number
set laststatus=2
set ruler
set scrolloff=15
set whichwrap+=<,>,h,l,[,]
set backspace=indent,eol,start
syntax on

se t_Co=256
set background=dark
colorscheme jellybeans

" settings for gui versions
if has("gui_macvim")
    set guifont=Menlo:h14
elseif has("gui_running")
    set guifont=Consolas:h10
    set lines=60 columns=120
endif

