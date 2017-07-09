syntax on

set number
set relativenumber

set foldmethod=indent

set tabstop=4
"Enable for spaces w/ tabs
"set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

colorscheme desert

"Change bad default fonts
if has("gui_running")
	if has("gui_win32")
		set guifont=Consolas:h12:cANSI
	endif
endif

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

"Default windows vimrc
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      if empty(&shellxquote)
        let l:shxq_sav = ''
        set shellxquote&
      endif
      let cmd = '"' . $VIMRUNTIME . '\diff"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
  if exists('l:shxq_sav')
    let &shellxquote=l:shxq_sav
  endif
endfunction

