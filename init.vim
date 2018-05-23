syntax on
filetype plugin indent on

set nocp
set nocompatible
set number
set nowrap
set showmode
set tw=80
set smartcase
set smarttab
set smartindent
set autoindent
set softtabstop=2
set shiftwidth=2
set expandtab
set incsearch
set mouse=a
set history=1000
"set clipboard=unnamedplus,autoselect
set completeopt=menuone,menu,longest
set wildignore+=*\\tmp\\*,*.swp,*.swo,*.zip,.git,.cabal-sandbox
set wildmode=longest,list,full
set wildmenu
set completeopt+=longest
set t_Co=256
set cmdheight=1
set background=dark

"let mapleader="\\"
let mapleader = "\<Space>"
filetype off                  " required
"execute pathogen#infect()

let g:elm_format_autosave = 1

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
colorscheme gruvbox
let g:netrw_liststyle=3
nmap ; :
map <Leader>d y'>p
map <Leader>D Vyp
nmap <Leader>fm gg=G
nmap <Leader>b :! build<Enter>
nmap <Leader>k :! gulp test<Enter>
noremap <C-f> :copen<CR>:Ag --ignore-dir node_modules --ignore-dir build --ignore-dir client/js/bundles --ignore-dir client/js/gulp --ignore-dir client/js/vendors -i 
"au FileType javascript call PareditInitBuffer()
nnoremap <S-h> gT
nnoremap <S-l> gt
nnoremap <S-Left> gT
nnoremap <S-Right> gt
nmap <Leader>t :NERDTree<Enter>
nnoremap <Leader>w :w<CR>
nmap <Leader>c Vgc
nmap <Leader><Leader> V
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P
noremap <Up> <NOP>
noremap <Down> <NOP>	
noremap <Left> <NOP>
noremap <Right> <NOP>
imap jj <Esc>
nnoremap <Leader>g :Grepper -tool ack<cr>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>

call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'shougo/vimproc.vim', {'do' : 'make'}
Plug 'sbdchd/neoformat' 
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-commentary'
Plug 'mhinz/vim-grepper'
Plug 'neovimhaskell/haskell-vim'


let g:neoformat_enabled_haskell = ['stylishhaskell', 'brittany']
let g:neoformat_run_all_formatters = 1
let g:neoformat_only_msg_on_error = 1
let g:neoformat_try_formatprg = 0

" Neoformat on save
augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END

call plug#end()
