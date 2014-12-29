" Author: Thomas White

" Start Pathogen
" Current pathogen plugins:
" ------------------------
"  python/vim-jedi
"  vim-airline
"  git/fugitive
execute pathogen#infect()

" for vim-airline
set laststatus=2
let g:airline_theme="badwolf"
set t_Co=256

" Custom settings
syntax on
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

set number

highlight Constant ctermfg=DarkGreen

set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

