set nu ai sw=4 ts=4
set bs=start,eol,indent
set wmnu wildignore=*.swp
color slate
syntax on
filetype indent on

nnoremap <F9> : !g++ % -o %< -g -lm -Wall -ftrapv -std=c++98<CR>
nnoremap <F8> : !g++ % -o %< -g -lm -Wall -Og -std=c++11<CR>

nnoremap <CR> :w<CR>
inoremap {<CR> {<CR>}<ESC>ko
