

" .vimrc -------------------------------------------------------{{{

" c-s leave insert mode, and write (Save).
" c-q leave insert mode, write and (quit) all windows.
" c-x search and replace
" Leader = -
" hjkl h=left j=down k=up l=right
" ciw ci" ci( ci[ ci{  Change Inner
" diw delete inner word
" yiw yank inner word

" }}}


" SETTINGS -----------------------------------------------------{{{

let &t_EI = "\<Esc>[1 q"
let &t_SR = "\<Esc>[3 q"
let &t_SI = "\<Esc>[5 q"
 
let $BASH_ENV = "~/.bash_aliases"

"let $ZSH_ENV = "~/.bash_aliases"

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection.  Vim will be able to try to detect
" the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Add numbers to each line on the left-hand side.
set number

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Highlight cursor line underneath the cursor vertically.
set cursorcolumn

" Set the color scheme.
colorscheme molokai

" Load an indent file for the detected file type.
filetype indent on

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight
" matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Smartindent will try to detect how code should be interpreted by the
" style of the code.
"set smartindent

"set guifont=Monospace\ Regular\ 10


" }}}


" MAPPINGS -----------------------------------------------------{{{

nnoremap <c-c> :
" Type ctrl+s leave -- INSERT -- and save/write file. 
nnoremap <c-s> :w<CR>
inoremap <c-s> <ESC>:w<CR>

" Type ctrl+q leave -- INSERT -- write and quit all windows.
nnoremap <c-q> :wq
inoremap <c-q> <ESC>:wq

" Type ctrl+a to Append to end of line.
"nnoremap  <c-a> A

" Pressing the letter o will open a new line below the current one.
" Pressing the letter O will open a new line above the current one.
" Exit insert mode after creating a new line above or below the current line.
nnoremap o o<esc>
nnoremap O O<esc>

" Yank from cursor to the end of line.
nnoremap Y y$
" Delete (cut) from cursor to the end of line.
nnoremap D d$

" shift + x = X = insert <space>
nnoremap X i<space><esc>

" Press the space bar to type :! from normal mode.
nnoremap <SPACE> :!

" CTRL+X to search and replace.
nnoremap <c-x> :%s/


" Navigate the split view with CTRL+hjkl
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
"or use TAB to jump between windows:
nnoremap <TAB> <c-w><c-w>

" Resize split windows using arrow keys by pressing:
" CTRL+UP, CTRL+DOWN, CTRL+LEFT, or CTRL+RIGHT.
noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><


" Funcion-key shortcuts to make different targets:
nnoremap <F2> :!make h<CR>
nnoremap <F3> :!make vars<CR>
nnoremap <F4> :!make clean<CR>
nnoremap <F5> :!make<CR>
nnoremap <F6> :!make run<CR>
nnoremap <F7> :!make dbg<CR>


"-------------------- MACROS -----------------------
let mapleader = "-"
" -t in normal mode to read main.c  
" -h in normal mode to read func1.h 
" -f in normal mode to read func1.c from ~/c/00templates/
nnoremap <Leader>t <ESC>:!PWD=$(pwd)<CR><CR>:r ~/c/00templates/main.c<CR>ggdd:w $PWD/main.c<CR>
nnoremap <Leader>h <Esc>:r ~/c/00templates/func1.h<CR>ggdd:w<CR>
nnoremap <Leader>f <Esc>:r ~/c/00templates/func1.c<CR>ggdd:w<CR>

" @c in normal mode to comment one line.
let @c = "I//---> \<Esc>j"
" @u in normal mode to uncomment a line.
let @u = "I\<Del>\<Del>\<Del>\<Del>\<Del>\<Del>\<Del>\<Esc>j"
" @p to insert printf("
let @p = "Iprintf(\""
" @f to insert 'for(int i = 0; i < 10; i++){'
let @f = "I\<TAB>for(int i = 0; i < 10; i++){"
"..................................................

" -v for vertical split, -h for horizonal split
"nnoremap <c-> :sp<CR>
nnoremap <Leader>v :vs<CR>
nnoremap <Leader>\ :sp<CR>





" }}}


" SCRIPTS ------------------------------------------------------{{{
"
" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" }}}


" PLUGINS ------------------------------------------------------{{{

"call plug#begin('~/.vim/plugged')


"call plug#end()

" }}}


" STATUS LINE --------------------------------------------------{{{

" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

 " Status line right side.
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Show the status on the second to last line.
set laststatus=2

" }}}

