" Golang config
filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
syntax on

set nocompatible|
set bs=2|
set laststatus=2|
set nocp|
set sts=4|
set ts=4|
set sw=4|

syntax on
filetype on

set smarttab
set smartindent

set number

" set hlsearch
set ruler
set showcmd

map <F11> <ESC>gg=G
map <C-x> <ESC>:

map <F12> <ESC>:TlistToggle
map <F10> <C-w>w

set comments-=s1:/*,mb:*,ex:*/
set comments+=s:/*,mb:**,ex:*/
set comments+=fb:*

" make searches case-insensitive, unless they contain upper-case letters:
set ignorecase
set smartcase

" show the `best match so far' as search strings are typed:
set incsearch

" unhilight search terms with space bar
map <Space> :nohl<CR>

" Allow <BkSpc> to delete line breaks, beyond the start of the current
" insertion, and over indentations:
set backspace=eol,start,indent

" Set status line
set statusline=[%02n]\ %f\ %(\[%M%R%H]%)%=\ %4l,%02c%2V\ %P%*

" Makes the cursor go to the next/previous line when it is at the beginning
" or end of a line
set whichwrap=<,>,h,l,[,]

" Creates . for trailing and leading whitespace so tabs and miscellaneous
" whitespace is easier to identify
if v:version >= 700
	set list listchars=tab:.\ ,trail:.,extends:>,nbsp:_
else
	set list listchars=tab:.\ ,trail:.,extends:>
endif

" Sets the colorscheme
" colorscheme devbox-dark-256

" Enables ctrl+p mode
set runtimepath^=~/.vim/bundle/ctrlp.vim
