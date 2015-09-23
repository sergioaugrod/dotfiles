set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

" Plugins

call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-rails'
Plugin 'godlygeek/tabular'
Plugin 'vim-ruby/vim-ruby'
Plugin 'othree/html5.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'flazz/vim-colorschemes'
Plugin 'mileszs/ack.vim'
Plugin 'derekwyatt/vim-scala'
call vundle#end()

" Basic Settings

filetype plugin indent on
syntax enable

colorscheme hybrid 

" OSX font
" set guifont=Menlo\ Regular:h13

set incsearch
set ignorecase
set smartcase

set scrolloff=5
set nowrap
set lazyredraw
set number
set numberwidth=4

set hlsearch

set laststatus=2
set hidden
set splitbelow
set splitright

set showcmd
set noshowmode
set ruler
set visualbell

set backspace=start,eol,indent
set showmatch
set matchtime=2

set expandtab
set shiftwidth=2
set softtabstop=2

set nowritebackup
set nobackup
set autoread 
set noswapfile
set history=100

" Multi Cursors Mapping

let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" Airline

let g:airline_left_sep = ''
let g:airline_right_sep = ''

" Window buffer navigation
 
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" ctrl c + ctrl v
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+
