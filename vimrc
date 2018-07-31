syntax on
colo solarized

" Options
set bs=start,indent,eol "backspace
set cin "cindent
set ch=1 "cmdheight
"set cul "cursorline
set enc=utf-8 "encoding
set noeb "errorbells
set nohls "hlsearch
set nois "incsearch
set lz "lazyredraw
set nu "number
set noru "ruler
set so=0 "scrolloff
set sc "showcmd
set sw=4 "shiftwidth
set ts=4 "tabstop
set title "title
set wmnu "wildmenu

" Compilation
nnoremap <silent> <F9> :w<cr>:!g++ % -o %< -g -Wall -std=c++98 -ftrapv -fsanitize=undefined -fsanitize-undefined-trap-on-error<cr>
nnoremap <silent> <F8> :w<cr>:!g++ % -o %< -std=c++11<cr>
inoremap <silent> <F9> <esc><F9>
inoremap <silent> <F8> <esc><F8>

" Movement
nnoremap <c-j> <c-e>
nnoremap <c-k> <c-y>
nnoremap <c-h> <c-u>
nnoremap <c-l> <c-d>

" Clipboard
if has('clipboard')
	nnoremap <F12> mpgg"+yG`p
else
	nnoremap <silent> <F12>
		\ :call system('cat '.expand('%').' \| /mnt/c/Windows/System32/clip.exe')<cr>
		\ :echomsg "File copied on ".strftime('%H:%M:%S')<cr>
endif

" Line Number
" nnoremap <silent> e :set rnu!<cr>
