set nocompatible 
filetype plugin indent on
set hid
set tabstop=4
set shiftwidth=4
set expandtab
set number 
set autoindent
set autochdir
syntax enable
set nowrap
"set termguicolors
"set guifont=Monaco:h14
"set background=light
set smartcase
set ignorecase
set viminfo='100,f1
set splitbelow
set splitright
set clipboard=unnamed

call plug#begin('~/.vim/plugged')
Plug 'raimondi/delimitmate'
Plug 'kien/ctrlp.vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'scrooloose/nerdcommenter'
Plug 'mattn/emmet-vim'
Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline'
call plug#end()

" Enable the list buffers 
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings={
    \ 'javascript.jsx' : {
    \   'extends' : 'jsx',
    \ },
    \ }

let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

" Ctrl-P 
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }

" move through buffers   
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
nnoremap <leader>h <C-w><C-h> 
nnoremap <leader>j <C-w><C-j> 
nnoremap <leader>k <C-w><C-k> 
nnoremap <leader>l <C-w><C-l> 

" Remap redo because it's so bad it cramps my pinkie  
nnoremap <leader>r <C-r>
nnoremap <leader>q :q<cr>
nnoremap <leader>s :w<cr>
inoremap <leader>s <C-c>:w<cr>

colorscheme monokai
