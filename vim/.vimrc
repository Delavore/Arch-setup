set number
set relativenumber

syntax on
set tabstop=4
set shiftwidth=4

set termguicolors
"set term=screen-256color

" Script to download vim-plug on the first run
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'  
""Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
""Plug 'junegunn/fzf.vim'
call plug#end()   

"set tags=./tags,tags;/

"autocmd BufWrite * :echom "write buffer"
" Automatic command for updating ctags 
" au BufWritePost *.c,*.cpp,*.h silent! !ctags -R &
"autocmd BufWritePost *.c,*.cpp,*.h,*.hpp,*.py,*.s,*.S,*.asm silent! !ctags -R --c-kinds=+p --fields=+n --exclude=build .
" --------------------
" Ctags search
" Search tags from current dir to HOME dir
set tags=./tags;$HOME 

let tagsFile=findfile("tags", ".;" . $HOME)

if !empty(tagsFile)
	let dir = fnamemodify(tagsFile, ':h') " get only dir without name

	augroup ctags_group
    	autocmd!
    	autocmd BufWritePost * silent! 
			\ execute "!ctags -R --c-kinds=+p --fields=+n --exclude=build -f " . shellescape(tagsFile) . " " . shellescape(dir)
	" *.c,*.cpp,*.h,*.hpp,*.py,*.s,*.S,*.asm silent! 
	augroup END
endif

" ---------------

set background=dark
let g:gruvbox_contrast_dark = 'dark'
colorscheme gruvbox

" Highlight only current line number
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

nnoremap zy "zyiw
nnoremap zd "zdiw
nnoremap zp "zp
