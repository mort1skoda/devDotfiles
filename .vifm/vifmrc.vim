""""""""""""""""""""""""""""""""""""""""
""""    ~/.vifm/vifmrc.vim    """"
""""""""""""""""""""""""""""""""""
"
" ////////////// SETTINGS //////////////////
" choose a nice colorscheme
colorscheme molokai
" make it posible for aliases to function within vifm :!m r
let $BASH_ENV = "~/.bash_aliases.sh"
set syscalls
" show hidden files by default
windo normal! zo
" no suported
" let mapleader "-"


" ////////////// MAPPINGS //////////////////
" <space> = :! = run external shell command
nnoremap <space> :!
nnoremap <TAB> :

" ctrl-q = quit
nnoremap <C-q> :q
" ctrl-s = save and source ~/.vifm/vifmrc
nnoremap <C-s> <ESC>:source ~/.vifm/vifmrc<CR>
cnoremap <C-s> <ESC>:source ~/.vifm/vifmrc<CR>

" ctrl-h,l and TAB toggle panes
nnoremap <C-l> <C-w><C-w>
nnoremap <C-h> <C-w><C-w>

"ctrl-w v = split vertical 
"ctrl-w s = split horizontal
"ctrl-w o = one pane only


" ////////////// RENAMING //////////////////
" i = insert / rename from start of filename
nnoremap i cw<C-a>
" a = append / rename from end   of filename
nnoremap a cw
" c = change / rename the whole filename.
nnoremap c cw<C-u>


