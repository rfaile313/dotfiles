"Rudy @rfaile313 Base .vimrc
""""""""""""""""""""""""""""
"line numers
:set number
"syntax
:syntax on
"file stats
:set ruler
"backspace
:set bs=2
"blink cursor instead of beep
:set visualbell
"encoding
:set encoding=utf-8
"whitespace
:set wrap
:set textwidth=100 "stops at col 100
:set formatoptions=tcqrn1
:set tabstop=4
:set shiftwidth=4
:set softtabstop=4
:set showbreak=+++ "show which lines poured over
"cursor
:set scrolloff=3
:set backspace=indent,eol,start
"line history
:set history=500
"ignore case when searching
:set ignorecase
"smart case when searching
:set smartcase
"highlight search results
:set hlsearch
"matching bracket pairs
:set showmatch
:set mat=2 "blink
"status line
:set laststatus=2

"uncomment for column highlight @ line 80
"highlight ColorColumn ctermbg=gray
"set colorcolumn=80

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MULTIPURPOSE TAB KEY
" Indent if we're at the beginning of a line. Else, do completion.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <expr> <tab> InsertTabWrapper()
inoremap <s-tab> <c-n>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"windows specific stuff:
let $LANG='en'
set langmenu=en
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
