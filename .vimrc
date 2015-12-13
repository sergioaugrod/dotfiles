set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'mileszs/ack.vim'
Plugin 'fatih/vim-go'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'derekwyatt/vim-scala'
Plugin 'othree/html5.vim'
Plugin 'digitaltoad/vim-jade'
Plugin 'godlygeek/tabular'
Plugin 'matze/vim-move'
Plugin 'tpope/vim-surround'
Plugin 'scheakur/vim-scheakur'
Plugin 'flazz/vim-colorschemes'
Plugin 'godlygeek/csapprox'
call vundle#end()

filetype plugin indent on
syntax enable

colorscheme hybrid 

" OSX Font
set guifont=Menlo\ Regular:h13

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

" Window Buffer Navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Ctrl C + Ctrl V
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+

" Remove Bars
set guioptions-=T
set guioptions-=t
set guioptions-=L
set guioptions-=l
set guioptions-=m
set guioptions-=r

" Alias to Clear Search
nnoremap <F3> :set hlsearch!<CR>

" Disable go auto format and show errors
let g:go_fmt_fail_silently = 1
let g:go_fmt_autosave = 0
