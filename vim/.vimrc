set number
set relativenumber

syntax on
set tabstop=4
set shiftwidth=4

set termguicolors
"set term=screen-256color


call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'  
call plug#end()   


set background=dark
let g:gruvbox_contrast_dark = 'dark'
colorscheme gruvbox

"
highlight CursorLine   cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
highlight CursorLineNr cterm=bold ctermfg=Yellow ctermbg=NONE gui=bold guifg=#fabd2f guibg=NONE
highlight SignColumn   cterm=NONE ctermfg=NONE ctermbg=NONE guibg=NONE guifg=NONE

set cursorline
"base

"set keymap=russian-jcukenwin
"set iminsert=0
"set imsearch=0
"highlight lCursor guifg=NONE guibg=Cyan

"if $DISPLAY == "" 
"	let g:XkbSwitchEnabled = 0
"else
"	let g:XkbSwitchEnabled = 1
"	let g:XkbSwitchLib = '~/.local/lib/libxkbswitch.so'
"	let g:XkbSwitchIMappings = ['ru']
"endif

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
"inoremap {<CR> {<CR>}<ESC>O
"inoremap {;<CR> {<CR>};<ESC>O
inoremap jj <ESC>

set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

nmap Ж :
" yank
nmap Н Y
nmap з p
nmap ф a
nmap щ o
nmap г u
nmap З P

