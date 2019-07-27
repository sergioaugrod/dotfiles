" Force read encoding
set encoding=utf-8

" To work cool, disable compatibility with Vi
set nocompatible

filetype off

" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'terryma/vim-multiple-cursors'
Plug 'rking/ag.vim'
Plug 'tpope/vim-surround'
Plug 'flazz/vim-colorschemes'
Plug 'christoomey/vim-tmux-navigator'
Plug 'sheerun/vim-polyglot'

call plug#end()

filetype plugin indent on
syntax enable

set background=dark
colorscheme hybrid

" Move the cursor to the matched string
set incsearch

" Search highlight
set hlsearch

" Search ignore case
set ignorecase

" Search do not wrap around
set nowrap

" Start scrolling 5 lines before the horizontal window border
set scrolloff=5

" Avoid lags
set lazyredraw

" Display line numbers
set number
set numberwidth=4

" To display the status line always
set laststatus=2

" Dont unload buffers
set hidden

" New window is put below the current one
set splitbelow
" New window is put right of the current one
set splitright

" Show commands
set showcmd

" Hide mode status (INSERT, VISUAL)
set noshowmode

" Show the cursor position
set ruler

" Allow backspace in insert mode
set backspace=start,eol,indent

" Reduce the need for % in matching
set showmatch
set matchtime=2

" Tab characters entered will be changed to spaces
set expandtab

" Number of space characters inserted for indentation
set shiftwidth=2
set softtabstop=2

" Avoid creation of * .ext files
set nowritebackup
set nobackup
set noswapfile

" Automatically read changes
set autoread

" Hidden buffer instead of close
set hidden

" Increase history
set history=1000

" Space as leader
map <space> <leader>

" Window buffer navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Ctrl C + Ctrl V
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+

" Multi cursors mapping
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" Airline
let g:airline_powerline_fonts = 1

" Remove all trailing whitespaces at save
autocmd BufWritePre * :%s/\s\+$//e

" Ignore some directories
set wildignore+=**/node_modules,**/bower_components,**/tmp,**/vendor,**/git
let NERDTreeIgnore=['node_modules', 'bower_components', 'tmp', 'vendor', 'tags']
let g:ctrlp_custom_ignore = 'node_modules\|bower_components\|tmp\|vendor\|DS_Store\|git|tags'
