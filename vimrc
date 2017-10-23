set nocompatible              " be iMproved, required
call plug#begin('~/.vim/plugged')

Plug 'gregsexton/MatchTag'
Plug 'tmhedberg/SimpylFold'
Plug 'kien/ctrlp.vim'
Plug 'morhetz/gruvbox'
Plug 'othree/html5.vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/paredit.vim'
Plug 'ervandew/supertab'
Plug 'scrooloose/syntastic'
Plug 'godlygeek/tabular'
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'guns/vim-clojure-static'
Plug 'kchmck/vim-coffee-script'
Plug 'tpope/vim-fireplace'
Plug 'nvie/vim-flake8'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'derekwyatt/vim-scala'
Plug 'technomancy/slamhound'
Plug 'GEverding/vim-hocon'
Plug 'altercation/vim-colors-solarized'
Plug 'exu/pgsql.vim'
Plug 'leafgarland/typescript-vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

call plug#end()

""" My settings
"colorscheme zenburn
"colorscheme xoria256
"colorscheme wombat256
"colorscheme burnttoast256
"colorscheme gruvbox
colorscheme solarized
set background=dark
syntax on
set hidden
set list
set listchars=trail:·,precedes:«,extends:»,tab:▸\
set cursorline
set shell=bash
set diffopt+=vertical

set noshowmode
set showcmd
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
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set preserveindent
"set smarttab
"set ai
filetype plugin indent on

set linebreak
set showbreak=+++\
set scrolloff=3
set winminheight=0

" File types
"au BufNewFile,BufRead *.test set filetype=php

" 80 column vertical line
"highlight ColorColumn ctermbg=235 guibg=#333333
set colorcolumn=100
"let &colorcolumn=join(range(81,999),",")

" Highligt trailing spaces
"match Error /\s\+\%#\@<!$/

" Don't keep tilde files
set nobackup

" Key mappings
let mapleader = ","
nnoremap j gj
nnoremap k gk
nnoremap <Leader>l :ls<cr>:b<space>
nnoremap <Leader>n :NERDTreeToggle<cr>
nnoremap <Leader>t :TagbarOpenAutoClose<cr>
"nnoremap n nzz
"nnoremap N Nzz
noremap <F12> <Esc>:syntax sync fromstart<CR>
inoremap <F12> <C-o>:syntax sync fromstart<CR>
nnoremap <Leader>m <C-]>
" Jump to topic
map <C-l> <C-]>
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>w :w<CR>

" Copy paste to system clipboard
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" Auto insert } after {
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

" Shift+Insert paste
if has("gui_running")
    map  <silent>  <S-Insert>  "*p
    imap <silent>  <S-Insert>  <Esc>"*pa
endif

" Remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" 256 Colors!
"if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
"  set t_Co=256
"endif

""" Plugin settings
" Autoload closetag
au Filetype html,xml,xsl source ~/.vim/scripts/closetag.vim

" Mark multiple
let g:mark_multiple_trigger = "<C-n>"

""" CTRL-P
let g:ctrlp_extensions = ['tag']
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

""" Tmux stuff
" Prevent vim from erasing background colour
" http://sunaku.github.io/vim-256color-bce.html
"set t_ut=

"" Airline
let g:airline_powerline_fonts = 1
set laststatus=2
let g:airline#extensions#default#section_truncate_width = {'y':110}
let g:airline_mode_map = {
  \ '__' : '-',
  \ 'n'  : 'N',
  \ 'i'  : 'I',
  \ 'R'  : 'R',
  \ 'c'  : 'C',
  \ 'v'  : 'V',
  \ 'V'  : "V-L",
  \ '' : "V-B",
  \ 's'  : 'S',
  \ 'S'  : 'S',
  \ '' : 'S',
  \ }

"" Syntastic
let g:syntastic_mode_map = {
            \ "mode": "active",
            \ "active_filetypes": [],
            \ "passive_filetypes": ["html"] }

" Man pages inside vim
runtime! ftplugin/man.vim
