""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 IMPORTANT
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""{{{
" I don't care about compatability with VI
set nocompatible
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}
"                   MOVING AROUND, SEARCHING AND PATTERNS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""{{{
" I like incremental search
set incsearch
" I also like smartcase (igonres case when all lower)
set ignorecase
set smartcase
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}
"                                    TAGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""{{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}
"                              DISPLAYING TEXT
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""{{{
" I don't want line wrap by default
set nowrap
" Turn on line numbers
set number
" Start scrolling when 8 lines from the bottom and 15 columns from the side
set scrolloff=8
set sidescrolloff=15
set sidescroll=1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}
"                     SYNTAX, HIGHLIGHTING AND SPELLING
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""{{{
" Turn syntax highligting on
syntax on

" Default higlight search terms
set hlsearch
" Mapping to toggle hlsearch
map <Leader>ht :set hlsearch!<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}
"                              MULTIPLE WINDOWS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""{{{
" Set status line to always be here
set laststatus=2
" Set the status line to my custom settings (commented out because I am using
" powerline now).

" set statusline=   " clear the statusline for when vimrc is reloaded
" set statusline+=%2*[%n]%*\                      " buffer number
" set statusline+=%f\                          " file name
" set statusline+=%h%m%r%w                     " flags
" set statusline+=[%{strlen(&ft)?&ft:'none'},  " filetype
" set statusline+=%{strlen(&fenc)?&fenc:&enc}, " encoding
" set statusline+=%{&fileformat}]              " file format
" set statusline+=%=                           " right align
" set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}\  " highlight
" set statusline+=%b,0x%-8B\                   " current char
" set statusline+=%-14.(%l,%c%V%)\ %<%P        " offset

" Set up hiding modified buffers
set hidden
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}
"                             MULTIPLE TAB PAGES
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""{{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}
"                                  TERMINAL
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""{{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}
"                              USING THE MOUSE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""{{{
" Enable mouse support in terminal Vim
set mouse=a
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}
"                                    GUI
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""{{{
" Change defualt font
if has("win32") || has("win64")
    set guifont=Consolas:h11:cANSI
else
    set guifont=DejaVuSansMono:h10
endif

" Cycle Font function
function! CycleFont()

    let fonts = ['DejaVuSansMono:h10', 'Menlo:h10', 'Mensch:h10']

    let i = index(fonts, &guifont)
    let &guifont = fonts[(i+1) % len(fonts)]

endfun
nnoremap <Leader>f :call CycleFont()<CR>

" Remove the toolbar and the scrollbar from the gui version
set guioptions-=T
set guioptions-=r
set guioptions-=L
set guioptions-=b

set t_Co=256
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}
"                                  PRINTING
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""{{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}
"                             MESSAGES AND INFO
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""{{{
" Show mode I'm in and the current command
" set showmode " Comment out when using powerline.
set showmode
set showcmd
set visualbell
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}
"                               SELECTING TEXT
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""{{{
" Don't update display while executing macros
set lazyredraw
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}
"                                EDITING TEXT
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""{{{
" Make backspace work like everywhere else (delete eol, etc.)
set backspace=indent,eol,start
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}
"                             TABS AND INDENTING
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""{{{
" I hate 8 space tabs, move to 4.
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}
"                                  FOLDING
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""{{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}
"                                 DIFF MODE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""{{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}
"                                  MAPPING
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""{{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}
"                         READING AND WRITING FILES
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""{{{
" Reload files changed outside of vim without complaint
set autoread
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}
"                               THE SWAP FILE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""{{{
set directory=.,$TEMP
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}
"                            COMMAND LINE EDITING
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""{{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}
"                        EXECUTING EXTERNAL COMMANDS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""{{{
if has("macunix")
    " In order to use aliases in bash commands, bash to login mode
    set shellcmdflag=-lc
endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}
"                     RUNNING MAKE AND JUMPING TO ERRORS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""{{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}
"                              SYSTEM SPECIFIC
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""{{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}
"                             LANGUAGE SPECIFIC
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""{{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}
"                           MULTI-BYTE CHARACTERS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""{{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}
"                                  MISCELANEOUS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""{{{
" Map some commands to edit ~/.vim/.vimrc
nnoremap <Leader>ev :vsplit $MYVIMRC<CR>
nnoremap <Leader>sv :so $MYVIMRC<CR>
" Make <Leader>w save; it saves <Shift>+:w<CR>
nnoremap <leader>w :w<CR>
" Delete trailing whitespace
nnoremap <Leader>rw :%s/\s\+$//e<CR>

" Map "jk" to <esc> in insert mode (saves from pressing escape)
inoremap jk <Esc>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}
"                                   VUNDLE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""{{{
" Setting up Vundle Pagacke Manager
filetype off
if has("win32") || has("win64")
    set rtp+=~/vimfiles/bundle/vundle
    call vundle#begin('$HOME/vimfiles/bundle/')
else " Unix or Mac can use .vim
    set rtp+=~/.vim/bundle/vundle
    call vundle#begin()
endif
Plugin 'gmarik/vundle'

" My Plugins here:

" original repos on github
" Viewer/Layouts
Plugin 'zhaocai/GoldenView.Vim'
Plugin 'itchyny/lightline.vim'
"Plugin 'bling/vim-airline'

" Language support
Plugin 'JuliaLang/julia-vim'
Plugin 'tpope/vim-markdown'
Plugin 'Vim-R-plugin'
Plugin 'chrisbra/csv.vim'
Plugin 'jelera/vim-javascript-syntax'
" Plugin 'kovisoft/slimv'
Plugin 'SAS-Syntax'
Plugin 'SAS-Indent'

" File Management/Usability
Plugin 'rking/ag.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'Wolfy87/vim-enmasse'

" External Program Interface
Plugin 'itspriddle/vim-marked'

" Color schemes
Plugin 'jellybeans.vim'
Plugin 'jpo/vim-railscasts-theme'
Plugin 'altercation/vim-colors-solarized'
Plugin 'mbbill/desertEx'

call vundle#end()
filetype plugin indent on
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}
"                                 ULTINSIPS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""{{{
let g:UltiSnipsExpandTrigger="<C-j>"
let g:UltiSnipsJumpForwardTrigger="<C-k>"
let g:UltiSnipsJumpBackwardTrigger="<C-S-k>"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}
"                                COLORSCHEMES
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""{{{
" fix for togglebg in solarized
call togglebg#map("")

" My default colorscheme for now
colorscheme railscasts

" Colorscheme bindings:
nnoremap <Leader>csr :colorscheme railscasts<CR>
nnoremap <Leader>csj :colorscheme jellybeans<CR>
nnoremap <Leader>csd :colorscheme desertEx<CR>
nnoremap <Leader>css :colorscheme solarized<CR>

" I like my editor to be a little transparent
if has('gui_running')
    set transparency=3
endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}
"                            SLIMV (Lisp plugin)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""{{{
if has("macunix")
    let g:slimv_swank_cmd = '!osascript -e "tell application \"Terminal\" to do script \"sbcl --load ~/.vim/bundle/slimv/slime/start-swank.lisp\""'
elseif has("win32") || has("win64")
    " Haven't set it up yet
endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}
"                                  NERDTREE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""{{{
" Toggle NERDTree on and off
nmap <F3> :NERDTreeToggle<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}
"                       Filetype Autocommands Commands
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""{{{
augroup filetype_markdown
    autocmd!
    autocmd FileType markdown setlocal wrap linebreak spell
augroup END
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}
