" Force read encoding
set encoding=utf-8

" To work cool, disable compatibility with Vi
set nocompatible

" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')

Plug 'christoomey/vim-tmux-navigator'
Plug 'flazz/vim-colorschemes'
Plug 'janko/vim-test'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
" Elixir
Plug 'slashmili/alchemist.vim'

call plug#end()

filetype plugin indent on
syntax enable

set background=dark
colorscheme hybrid

" Move the cursor to the matched string
set incsearch

" Search highlight
set hlsearch

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

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Multi cursors mapping
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_quit_key='<Esc>'
let g:multi_cursor_skip_key='<C-x>'

" Airline
let g:airline_powerline_fonts = 1

" Remove all trailing whitespaces at save
autocmd BufWritePre * :%s/\s\+$//e

" Space as leader
map <space> <leader>

" Window buffer navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" ctrl c + ctrl v
vmap <C-c> "+yi
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+

" fzf.vim mappings
nnoremap <C-g> :Rg<Cr>
nnoremap <C-p> :GFiles<Cr>

" NerdTree mappings
map <leader>t :NERDTreeToggle<CR>

" vim-test mappings
nmap <silent> <leader>tn :TestNearest<CR>
nmap <silent> <leader>tf :TestFile<CR>
nmap <silent> <leader>ta :TestSuite<CR>
