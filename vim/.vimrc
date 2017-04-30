set nocompatible

filetype plugin indent on
syntax on

set autoindent
set expandtab
set softtabstop     =4
set shiftwidth      =4
set shiftround

set backspace       =indent,eol,start
set hidden
set laststatus      =2
set display         =lastline
set mouse           =a

set showmode
set showcmd

set incsearch
set hlsearch

set ttyfast
set lazyredraw

set splitbelow
set splitright

set cursorline
set wrapscan
set report          =0
set synmaxcol       =200

set list
if has('multi_byte') && &encoding ==# 'utf-8'
  let &listchars = 'tab:▸ ,extends:❯,precedes:❮,nbsp:±'
else
  let &listchars = 'tab:> ,extends:>,precedes:<,nbsp:.'
endif

if &shell =~# 'fish$'
  set shell=/bin/bash
endif

if !isdirectory($HOME.'/.vim/files') && exists('*mkdir')
    call mkdir($HOME.'/.vim/files')
endif


set backup
set backupdir       =$HOME/.vim/files/backup/
set backupext       =-vimbackup
set backupskip      =
set directory       =$HOME/.vim/files/swap//
set updatecount     =100
set undofile
set undodir         =$HOME/.vim/files/undo/
set viminfo         ='100,n$HOME/.vim/files/info/viminfo
