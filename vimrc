execute pathogen#infect()

set autoindent
set expandtab
set shiftwidth=4
set softtabstop=4
filetype plugin indent on

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

" starting window size for gvim
if has("gui_running")
    set lines=60 columns=120
endif

" se t_Co=256
set background=dark
colorscheme solarized
