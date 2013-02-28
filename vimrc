" Load Pathogen
call pathogen#infect()

""" My settings
"colorscheme zenburn
colorscheme xoria256
syntax on
set nocompatible
set hidden

set showcmd
set ignorecase
set smartcase
set hidden
" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Search settings
set incsearch
set ignorecase
set smartcase
set hlsearch

" Indent options
set shiftwidth=2
set tabstop=2
set softtabstop=0
set noexpandtab
set preserveindent
"set smarttab
"set ai
filetype plugin indent on

set linebreak
set showbreak=>>>
set scrolloff=3

" Don't keep tilde files
set nobackup

" Key mappings
let mapleader = ","
nnoremap j gj
nnoremap k gk
nnoremap <leader>l :ls<cr>:b<space>

" Auto insert } after {
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

" 256 Colors!
"if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
"  set t_Co=256
"endif

""" Plugin settings
" Autoload closetag
au Filetype html,xml,xsl source ~/.vim/scripts/closetag.vim

""" Powerline options
" Always show status line
set laststatus=2
let g:Powerline_symbols = 'compatible'
