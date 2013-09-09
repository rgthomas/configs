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
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
syntax on


" Avalanche specific
autocmd BufRead,BufNewFile *.fp,*.vp,*.cp
    \ setlocal syntax=c |
    \ setlocal noexpandtab
autocmd FileType c,cpp setlocal noexpandtab
nnoremap <leader>c :!p4 edit %:p<cr>
nnoremap <leader>x :!p4 diff %:p<cr>


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
nnoremap <leader>v :source $MYVIMRC<cr>

nnoremap <leader>t :tabnew<cr>
nnoremap <leader>d :tabp<cr>
nnoremap <leader>f :tabn<cr>

nnoremap <leader>1 O/*<cr><cr><bs>/<cr><esc>k^x78Pkk78pja<space>
nnoremap <leader>2 O/*!<cr><cr><bs>/<up><space>
nnoremap <leader>3 A<tab>//!<<space>


" wildignore
set wildignore+=*.git,*.svn,*.o,*.lib,*.pyd
if has('unix')
    set wildignore+=*.a,*.dylib,*.dSYM,*.DS_Store
elseif has('win32') || has('win64')
    set wildignore+=*.dll,*.suo,*.sdf
endif


" CtrlP
let g:ctrlp_working_path_mode='r'
let g:ctrlp_root_markers=['.ctrlp']
if has('unix')
    let g:ctrlp_custom_ignore={
        \ 'dir':    'build'
        \ }
elseif has('win32') || has('win64')
    let g:ctrlp_custom_ignore={
        \ 'dir':    'build',
        \ 'files':  '\v*\.(exe)$'
        \ }
endif
nnoremap <leader>p :CtrlPMixed<cr>

" NERDTree
let NERDTreeQuitOnOpen=1
nnoremap <leader>a :NERDTreeToggle<cr>
nnoremap <leader>s :NERDTreeFind<cr>

