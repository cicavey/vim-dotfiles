set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" Colors!
Bundle 'jonathanfilip/vim-lucius'

Bundle 'scrooloose/nerdtree'
Bundle 'leshill/vim-json'
Bundle 'tpope/vim-haml'
Bundle 'kchmck/vim-coffee-script'

Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-rails'
Bundle 'othree/html5.vim'
Bundle 'mutewinter/nginx.vim'

Bundle 'nvie/vim-flake8'
Bundle 'fs111/pydoc.vim'
Bundle 'vim-scripts/python_match.vim'
Bundle 'jmcantrell/vim-virtualenv'

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

" Color scheme specific options
LuciusDark 

set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
set laststatus=2

map <C-f>         :NERDTreeToggle<CR>

" F11 to toggle paste mode
map <F11> :set invpaste<CR>
set pastetoggle=<F11>

