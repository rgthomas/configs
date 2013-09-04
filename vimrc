set nocompatible

" vundle setup
filetype off

if has("unix")
    set rtp+=~/.vim/bundle/vundle/
elseif has("win32") || has("win64")
    set rtp+=~/vimfiles/bundle/vundle/
endif
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'altercation/vim-colors-solarized'
Bundle 'nanotech/jellybeans.vim'

filetype plugin indent on


" indentation & syntax
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent
syntax on


" color settings
se t_Co=256
set background=dark
colorscheme jellybeans


" gui settings
if has("gui_macvim")
    set guifont=Menlo:h14
elseif has("gui_running")
    set guifont=Consolas:h10
    set lines=65 columns=130
endif


" searching and moving
set backspace=indent,eol,start
set gdefault
set hlsearch
set ignorecase
set incsearch
set smartcase
set whichwrap+=<,>,h,l,[,]

" turn off vim's regex chars
nnoremap / /\v
vnoremap / /\v

" use tab to match bracket pairs
nnoremap <tab> %
vnoremap <tab> %

" tab navigation
nnoremap <c-tab> :tabn<cr>
nnoremap <c-s-tab> :tabp<cr>
nnoremap <c-t> :tabnew<cr>


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
nnoremap <leader>q O/*<cr><cr><bs>/<cr><esc>k^x78Pkk78pja<space>
nnoremap <leader>w O/*!<cr><cr><bs>/<up><space>
nnoremap <leader>e A<space>//!<<space>


