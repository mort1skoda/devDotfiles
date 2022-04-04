""""""""""""""""""""""""""""""""""
""""    ~/.vimTut.txt
"""""""""""""""""""""""""

ff  =  toggle folds
.   = repeat last command

Turn on spell checking
:set spell

Turn off spell checking:
:set nospell

"-----  Change Delete Yank -----------------------{{{

ce  = change to end   of current word 
cw  = change to start of the next word
ciw = change inner word
caw = change outer word, includes whitespace
ct  = change upto given char
cf  = change including given char
C   = change to end of line


de  = delete to end   of current word
dw  = delete to start of the next word
diw = delete inner word
daw = delete outer word, includes whitespace
dt  = delete upto given char
df  = delete including given char
D   = delete to end of line


ye  = yank   to end   of current word
yw  = yank   to start of next word
yiw = yank   inner word
yaw = yank   outer word, includes whitespace
yt  = yank   upto given char
yf  = yank   including given char
Y   = yank   to end of line


"yank qwer and then put and replace over zxcv
$test = 'qwer';
$test2= 'zxcv';

"yi'   = yank inside '
"vi'p  = visual inside  '
"p     = then put

(asdf)
[qwer]

yi(
vi[
p

<div>
{tst}

" }}}


"-----  Split window / resize pane ---------------{{{

,v	vertical split
,h	horizontal split
S-L resize pane right 
S-H resize pane left
C-l navigate to pane right
C-h navigate to pane left

" }}}


"-----  Show mappings ----------------------------{{{

":nmap - Display normal mode maps
":imap - Display insert mode maps
":vmap - Display visual and select mode maps
":smap - Display select mode maps
":xmap - Display visual mode maps
":cmap - Display command-line mode maps
":omap - Display operator pending mode maps

" }}}


"-----  Leader stuff -----------------------------{{{

Leader = ','
,vv = vim ~/.vimrcv  (check out ~/.vimrc for more macros)

"}}}


