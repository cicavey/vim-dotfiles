set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

" let Vundle manage Vundle
" required! 
Plugin 'gmarik/vundle'

" Colors!
Plugin 'jonathanfilip/vim-lucius'
Plugin 'tomasr/molokai'

Plugin 'scrooloose/nerdtree'
Plugin 'leshill/vim-json'
Plugin 'tpope/vim-haml'
Plugin 'kchmck/vim-coffee-script'

Plugin 'pangloss/vim-javascript'

Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-rails'
Plugin 'othree/html5.vim'
Plugin 'mutewinter/nginx.vim'

Plugin 'nvie/vim-flake8'
Plugin 'fs111/pydoc.vim'
Plugin 'vim-scripts/python_match.vim'
Plugin 'jmcantrell/vim-virtualenv'

Plugin 'ekalinin/Dockerfile.vim'

call vundle#end()

set encoding=utf-8
set autoread
set nocompatible
set t_Co=256
set autoindent
set backspace=indent,eol,start
set novisualbell
set noerrorbells
set hls
set showmatch
set nobackup
set noswapfile
set number
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

set list listchars=tab:»\ ,trail:·

syntax on
filetype plugin indent on

" Python specific config
autocmd FileType python setlocal shiftwidth=4 expandtab tabstop=4 softtabstop=4

" Color theme
colorscheme lucius
LuciusDark
"colorscheme molokai

set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
set laststatus=2

map <C-f>         :NERDTreeToggle<CR>

" F11 to toggle paste mode
map <F11> :set invpaste<CR>
set pastetoggle=<F11>

filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
syntax on
autocmd FileType go autocmd BufWritePre <buffer> Fmt
