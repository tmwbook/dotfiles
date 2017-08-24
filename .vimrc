syntax on

set number
set relativenumber
set t_Co=256

set foldmethod=indent
set nofoldenable

set tabstop=4
"Enable for spaces w/ tabs
"set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

colorscheme slate

"leader mappings for basic use
let mapleader = ","

"Example: nnoremap <Leader>L i<C-x><C-l>
nnoremap <Leader>vr :source %<cr>

"Chromebook window switching
nnoremap <Leader>wh <C-w>h<cr>
nnoremap <Leader>wj <C-w>j<cr>
nnoremap <Leader>wk <C-w>k<cr>
nnoremap <Leader>wl <C-w>l<cr>

set shiftwidth=4

"Plug-Vim
call plug#begin()

Plug 'tpope/vim-surround'
Plug 'bling/vim-airline'
Plug 'ervandew/supertab'
"will only work with +python
"Plug ultisnips
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'kien/ctrlp.vim'
"Lord have mercy on your soul
Plug 'wikitopian/hardmode'
Plug 'vim-airline/vim-airline-themes'
Plug 'townk/vim-autoclose'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'

call plug#end()

"UltiSnips
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"CtrlP
let g:ctrlp_map="<c-p>"
let g:ctrlp_cmd="CtrlP"
let g:ctrlp_working_path_mod = "ra"

"Hardmode
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

"Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme='kolor'

"NERDtree
map <C-n> :NERDTreeToggle<CR>
