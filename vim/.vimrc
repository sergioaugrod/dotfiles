" Force read encoding
set encoding=utf-8

" To work cool, disable compatibility with Vi
set nocompatible

filetype off

" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'terryma/vim-multiple-cursors'
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

" Netrw Tweaks
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_altv = 1
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" Multi cursors mapping
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" Airline
let g:airline_powerline_fonts = 1

" Remove all trailing whitespaces at save
autocmd BufWritePre * :%s/\s\+$//e

" Space as leader
map <space> <leader>

" fzf.vim shortcuts
nnoremap <C-g> :Rg<Cr>
nnoremap <C-p> :GFiles<Cr>

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
