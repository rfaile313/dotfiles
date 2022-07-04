" neovim configs 
" ~/.config/nvim/init.vim

" vim-plug stuff
" If you add new shit have to run :PlugInstall in nvim 🥴
call plug#begin()
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()
" end vim-plug stuff

" remaps
" Telescope stuff
nnoremap <silent> <C-E> :Telescope find_files<CR>
nnoremap <silent> <C-F> :Telescope live_grep<CR>
nnoremap <silent> <C-W> :Telescope buffers<CR>

" configs
set number
" only needs to be present in ./colors/sonokai.vim to work :)
colorscheme sonokai
set tabstop=4
set shiftwidth=4
set ignorecase
set smartcase
set hlsearch
set showmatch
set mat=2
set scrolloff=3

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indent if we're at the beginning of a line. Else, do completion.
"NOTE(Rudy): DOES NOT WORK WITH :set paste
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
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Move between windows with ctrl <-- -->
nmap <silent> <C-Right> :wincmd l<CR>
nmap <silent> <C-Left> :wincmd h<CR>

" remove highlighting after search with comma-space
nnoremap <silent> ,<space> :nohlsearch<CR>

" Remap q to Q (macro)
" Helps hit it less
nnoremap Q q
nnoremap q <Nop>

