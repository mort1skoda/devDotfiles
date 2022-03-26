""""""""""""""""""""""""""""""""""""""""
""""    ~/.vimrc    """"
""""""""""""""""""""""""

" cheatSheet---------------------------------Display insert mode maps-{{

".  = repeat last command
"
"cw 	= change to end of word
"ce		= change to end of word
"ciw 	= change inner word
"caw 	= change outer word, includes whitespace
"ct  	= change to (given char or symbol)
"C   	= change to end of line
"
"dw 	= delete to start of next word
"de 	= delete to end of current word
"diw 	= delete inner word
"daw 	= delete outer word, includes whitespace

"D   	= delete to end of line
"
"yw		= yank to start of next word
"ye		= yank to end of current word
"yiw 	= yank inner word
"yaw	= yank outer word
"Y		= yank to end of line
"
"-----------SHOW MAPPINGS-----------
":nmap - Display normal mode maps
":imap - Display insert mode maps
":vmap - Display visual and select mode maps
":smap - Display select mode maps
":xmap - Display visual mode maps
":cmap - Display command-line mode maps
":omap - Display operator pending mode maps



" }}}


" SETTINGS -----------------------------------------------------{{

" Expand aliases.
let $BASH_ENV = "~/.bash_aliases.sh"
let $ZSH_ENV = "~/.bash_aliases"

" Block cursor in Normal mode, vertical cursor in Insert mode,
" horizontal cursor in Replace mode
let &t_EI = "\<Esc>[1 q"
let &t_SR = "\<Esc>[3 q"
let &t_SI = "\<Esc>[5 q"

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible
" Do not create .swp files
set noswapfile
" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on
" Enable plugins and load plugin for the detected file type.
filetype plugin on
" Load an indent file for the detected file type.
filetype indent on
" Turn syntax highlighting on.
syntax on
" Add numbers to each line on the left-hand side.
set number
" turn relative line numbers on
set relativenumber
" Highlight cursor line underneath the cursor horizontally.
set cursorline
" Highlight cursor line underneath the cursor vertically.
set cursorcolumn
" Set the color scheme.
colorscheme molokai
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
" Incrementally highlight matching characters as you type.
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

" }}}


" MAPPINGS -----------------------------------------------------{{

nnoremap r r
" go to end of line
nnoremap å $:echo'å=$=go to end of line'<CR>
nnoremap 0 0:echo'0=0=go to beginning of line'<CR>

nnoremap h h:echo'-- NORMAL --   h-left'<CR>
nnoremap j j:echo'-- NORMAL --   j-dwn'<CR>
nnoremap k k:echo'-- NORMAL --   k-up'<CR>
nnoremap l l:echo'-- NORMAL --   l-right'<CR>

" speed up scrolling
nnoremap <C-e> 2<C-e>:echo 'scroll dwn'<CR>
nnoremap <C-y> 2<C-y>:echo 'scroll up'<CR>

let mapleader = ","

"--------PANES----------------------------------
" ,v for vertical split ,h for horizonal split
nnoremap <Leader>v :vs<CR>
nnoremap <Leader>h :sp<CR>
" ctrl-hjkl navigate panes
nnoremap <C-l> <C-w>l:echo 'nav pane right:' expand('%:p')<CR>
nnoremap <C-h> <C-w>h:echo 'nav pane left:' expand('%:p')<CR>
nnoremap <C-j> <C-w>j:echo 'nav pane dwn:' expand('%:p')<CR>
nnoremap <C-k> <C-w>k:echo 'nav pane up:' expand('%:p')<CR>
" Resize panes: SHIFT-L and SHIFT-H
nnoremap <S-L> 2<c-w>>:echo 'Resize pane SHIFT-L=>'<CR>
nnoremap <S-H> 2<c-w><:echo 'Resize pane SHIFT-H=<'<CR>
nnoremap <S-J> <c-w>+:echo 'Resize pane SHIFT-J=dwn'<CR>
nnoremap <S-K> <c-w>-:echo 'Resize pane SHIFT-K=up'<CR>
"-----------------------------------------------
" move cursor in insert mode with shift hjkl
"inoremap <S-L> <ESC>lli
"inoremap <S-H> <ESC>i
"inoremap <S-J> <ESC>jli
"inoremap <S-K> <ESC>kli

"-------- C COMPILATION using Makefile ---------
" F2 F3 ...
nnoremap <F2> :!make help<CR>
nnoremap <F3> :!make vars<CR>
nnoremap <F4> :!make clean<CR>
nnoremap <F5> :!make<CR>
nnoremap <F6> :!make run<CR>
nnoremap <F7> :!make dbg<CR>
" ,mh ,mv ...
nnoremap <Leader>mh :!make help<CR>
nnoremap <Leader>mv :!make vars<CR>
nnoremap <Leader>mc :!make clean<CR>
nnoremap <Leader>mm :!make<CR>
nnoremap <Leader>mr :!make run<CR>
nnoremap <Leader>md :!make dbg<CR>
"-----------------------------------------------
" ,va ,vb ... edit dotfiles
let $ALIASES = '~/.aliases.sh'
let $BASHRC  = '~/.bashrc'
let $VIFMRC  = '~/.vifm/vifmrc.vim' 
let $TMUX    = '~/.tmux.conf'
let $VIMRC   = '~/.vimrc'
set splitright
":set cursorline cursorcolumn<CR><ESC>
nnoremap <Leader>va :vs $ALIASES<CR>:echo expand('%:p')<CR>
nnoremap <Leader>vb :vs $BASHRC <CR>:echo expand('%:p')<CR>
nnoremap <Leader>vf :vs $VIFMRC <CR>:echo expand('%:p')<CR>
nnoremap <Leader>vt :vs $TMUX   <CR>:echo expand('%:p')<CR>
nnoremap <Leader>vv :vs $VIMRC  <CR>:echo expand('%:p')<CR>


" ctrl-s write (save) and source ~/.vimrc
" in normal, insert, visual and comand mode.
nnoremap <C-s> <ESC><ESC>:w<CR>:source $VIMRC<CR>:echo'-- NORMAL -- saved:'@%'  -   sourced:'$VIMRC<CR>
" NB!!! ::: Do NOT remove the l after <CR> ::: !!!
" It adjusts the position of the coursor!!
inoremap <C-s> <ESC><ESC>:w<CR>:source $VIMRC<CR><ESC>l:echo'-- NORMAL -- saved:'@%'  -   sourced:'$VIMRC<CR>
vnoremap <C-s> <ESC><ESC>:w<CR>:source $VIMRC<CR>:echo'-- NORMAL -- saved:'@%'  -   sourced:'$VIMRC<CR>
cnoremap <C-s> <ESC><ESC>:w<CR>:source $VIMRC<CR>:echo'-- NORMAL -- saved:'@%'  -   sourced:'$VIMRC<CR>

" ctrl-q write and quit
" in normal, insert, visual and command mode.
nnoremap <c-q> :wq
inoremap <c-q> <ESC>:wq
vnoremap <c-q> <ESC>:wq
cnoremap <c-q> <ESC>:wq

" O = insert line above
nnoremap o o<esc>
" o = insert line below
nnoremap O O<esc>

" Y,D,C = Yank, Delete, Change from cursor to the end of line.
nnoremap Y y$:echo'Y = Yanked from cursor to end of line'<CR>
nnoremap D d$
nnoremap C c$

" jump one right after Put
nnoremap P Pl

" Shift-x insert space, only x delete one character.
nnoremap X i<space><esc>

" Space to type :!  to enter shell comands.
nnoremap <SPACE> :!
"inoremap <TAB> <SPACE><SPACE><SPACE><SPACE>
"nnoremap <TAB> i<TAB><ESC>
    
" ctrl-x to search and replace.
nnoremap <C-x> :%s/
" ctrl-f find
nnoremap <C-f> /


nnoremap <Leader>e :Lexplore<CR>7<C-w><






"--------MACROS---------------------------------
"nnoremap <Leader>t <ESC>:!PWD=$(pwd)<CR><CR>:r ~/c/00templates/main.c<CR>ggdd:w $PWD/main.c<CR>
"nnoremap <Leader>h <Esc>:r ~/c/00templates/func1.h<CR>ggdd:w<CR>
"nnoremap <Leader>f <Esc>:r ~/c/00templates/func1.c<CR>ggdd:w<CR>

" @c in normal mode to comment one line.
let @c = "I//---> \<Esc>j"
" @u in normal mode to uncomment a line.
let @u = "I\<Del>\<Del>\<Del>\<Del>\<Del>\<Del>\<Del>\<Esc>j"
" @p to insert printf("
let @p = "Iprintf(\""
" @f to insert 'for(int i = 0; i < 10; i++){'
let @f = "I\<TAB>for(int i = 0; i < 10; i++){"
"-----------------------------------------------



" }}}


" SCRIPTS ------------------------------------------------------{{
"
" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" Display cursorline and cursorcolumn ONLY in active window.
augroup cursor_off
	autocmd!
	autocmd WinLeave * set nocursorline nocursorcolumn
	autocmd WinEnter * set cursorline cursorcolumn
augroup END



" }}}


" PLUGINS ------------------------------------------------------{{

"call plug#begin('~/.vim/plugged')


"call plug#end()

" }}}


" STATUS LINE --------------------------------------------------{{

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

