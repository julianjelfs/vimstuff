let mapleader = "\<Space>"
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
nnoremap <S-h> gT
nnoremap <S-l> gt
nnoremap <S-Left> gT
nnoremap <S-Right> g
nmap <Leader>fm gg=
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
nmap <Leader>t :NERDTree<Enter>
nnoremap <Leader>w :w<CR>
nmap <Leader><Leader> V
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>
