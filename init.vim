syntax on
filetype plugin indent on

set nocp
set nocompatible
set number
"set nowrap
set wrap
set showmode
set tw=80
set smartcase
set ignorecase
set smarttab
set smartindent
set autoindent
set softtabstop=4
set shiftwidth=4
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
"set nohlsearch

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
"nnoremap <Leader>g :Grepper -tool ack-grep -side<cr>
nnoremap <Leader>g :Grepper -tool ack-grep -grepprg ack-grep --ignore-dir=.stack-work<cr>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>
map <F4> :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR>

call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'shougo/vimproc.vim', {'do' : 'make'}
Plug 'sbdchd/neoformat' 
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-commentary'
Plug 'mhinz/vim-grepper'
Plug 'neomake/neomake'
Plug 'ludovicchabant/vim-gutentags'
Plug 'frigoeu/psc-ide-vim'
Plug 'purescript-contrib/purescript-vim'
Plug 'godlygeek/tabular'

" React stuff
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'mattn/emmet-vim'
Plug 'w0rp/ale'
Plug 'skywind3000/asyncrun.vim'

let g:haskell_indent_disable          = 1
let g:haskell_classic_highlighting    = 1
let g:haskell_indent_if               = 3
let g:haskell_indent_case             = 5
let g:haskell_indent_let              = 4
let g:haskell_indent_where            = 2
let g:haskell_indent_before_where     = 2
let g:haskell_indent_after_bare_where = 4
let g:haskell_indent_do               = 3
let g:haskell_indent_in               = 1
let g:haskell_indent_guard            = 4
let g:haskell_indent_case_alternative = 4
let g:cabal_indent_section            = 4

let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = {'javascript.jsx':{'extends':'jsx'}}

let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'css': ['prettier'],
\   'haskell': ['stylish-haskell', 'brittany'],
\}

let g:ale_linters = {
\ 'haskell': ['hlint'],
\}

call plug#end()

if !executable('ctags')
    let g:gutentags_dont_load = 1
endif

let g:gutentags_ctags_executable_haskell = 'bash hasktags_'

call neomake#configure#automake('w')
