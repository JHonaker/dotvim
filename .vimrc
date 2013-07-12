" Turn on line numbers
set number
" I don't care about compatability with VI
set nocompatible

" I don't want line wrap by default
set nowrap

" I like highlight search and incremental search
set hlsearch
set incsearch

filetype on
filetype plugin on
filetype indent on

" In order to use aliases in bash commands, bash to login mode
set shellcmdflag=-lc

" Turn syntax highligting on
syntax on

" I hate 8 space tabs, move to 4.
set tabstop=4
set shiftwidth=4
set expandtab

" Set up hiding modified buffers
set hidden

" Set status line to always be here
set laststatus=2

" Set the status line to my custom settings
set statusline=   " clear the statusline for when vimrc is reloaded
set statusline+=%2*[%n]%*\                      " buffer number
set statusline+=%f\                          " file name
set statusline+=%h%m%r%w                     " flags
set statusline+=[%{strlen(&ft)?&ft:'none'},  " filetype
set statusline+=%{strlen(&fenc)?&fenc:&enc}, " encoding
set statusline+=%{&fileformat}]              " file format
set statusline+=%=                           " right align
set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}\  " highlight
set statusline+=%b,0x%-8B\                   " current char
set statusline+=%-14.(%l,%c%V%)\ %<%P        " offset


" Don't update display while executing macros
set lazyredraw

" Show mode I'm in
set showmode

" Setting up Vundle Pagacke Manager
set rtp+=~/.vim/bundle/vundle
call vundle#rc()
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-fugitive'
Bundle 'Vim-R-plugin'
Bundle 'kovisoft/slimv'
Bundle 'tpope/vim-surround'
Bundle 'Valloric/YouCompleteMe'
Bundle 'jelera/vim-javascript-syntax'

" Color schemes
Bundle 'jellybeans.vim'
Bundle 'mbbill/desertEx'

" My default colorscheme for now
colorscheme jellybeans

" SLIMV setup
let g:slimv_swank_cmd = '!osascript -e "tell application \"Terminal\" to do script \"sbcl --load ~/.vim/bundle/slimv/slime/start-swank.lisp\""'
