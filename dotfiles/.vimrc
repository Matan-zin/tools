"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""               
"               
"               ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"               ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"               ██║   ██║██║██╔████╔██║██████╔╝██║     
"               ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     
"                ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"                 ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"               
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" Packages manage by minpac
" -------------------------------------------------------------------------
function! PackInit() abort
  packadd minpac
  call minpac#init()
  
  call minpac#add('preservim/nerdtree')
  call minpac#add('sheerun/vim-polyglot')
  call minpac#add('neoclide/coc.nvim', {'branch': 'release'})
  call minpac#add('ajmwagar/vim-deus')
  call minpac#add('jiangmiao/auto-pairs')
 
endfunction
command! PackUpdate call PackInit() | call minpac#update()
command! PackClean  call PackInit() | call minpac#clean()
command! PackStatus packadd minpac | call minpac#status()
" --------------------------------------------------------------------------
" General configurations
syntax on
set ruler
set encoding=utf-8
set number
set wildmenu
set shiftwidth=4
set tabstop=4
set softtabstop=0
set expandtab
set nobackup
set scrolloff=10
set nowrap
set incsearch
set ignorecase
set smartcase
set showcmd
set showmode
set showmatch
set hlsearch
set history=1000
set mouse=a
set backspace=indent,eol,start

inoremap jk <ESC>
" --------------------------------------------------------------------------
"  Colorscheme
"  -------------------------------------------------------------------------
set t_Co=256
set termguicolors

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set background=dark    " Setting dark mode
colorscheme deus
let g:deus_termcolors=256
" --------------------------------------------------------------------------
" Coc configurations
" --------------------------------------------------------------------------
set hidden
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=number

" Use TAB for auto compilations
" -----------------------------
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" ---------------------------------------------------------------------------
" NerdTree configurations 
" ---------------------------------------------------------------------------
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" ---------------------------------------------------------------------------
