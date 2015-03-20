set nocompatible              " be iMproved, required
filetype off                  " required
execute pathogen#infect()
filetype plugin indent on    " required

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

colorscheme pablo
let g:netrw_liststyle=3
set incsearch
set number
set ignorecase
set smartcase
syntax enable
nmap ; :
map <Leader>d y'>p
map <Leader>D Vyp
au BufReadPost *.cshtml set syntax=html
noremap <C-f> :copen<CR>:Ag --ignore-dir build --ignore-dir client/js/bundles -i 
