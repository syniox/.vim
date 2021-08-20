syntax on
color slate

set nu sc sw=4 ts=4 bs=start,eol,indent
set wmnu wig=*.swp
filetype indent on

nnoremap <silent> <F9> :w<cr>:!g++ % -o %< -std=c++11 -g -lm -Wall -fsanitize=undefined<cr>
nnoremap <silent> <F8> :w<cr>:!g++ % -o %< -std=c++11 -O2 <cr>
inoremap <silent> <F9> <esc><F9>
inoremap <silent> <F8> <esc><F8>

nnoremap <cr> :w<cr>
if has("windows") && !empty(glob("~/.vim"))
	map "+y :w !clip.exe<CR><CR>
en

inoremap <silent> {<CR> {<CR>}<esc>ko
