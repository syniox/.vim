syntax on
color slate

set nu sc sw=4 ts=4 bs=start,eol,indent
set wmnu wig=*.swp
filetype indent on

nnoremap <F9> :w<CR> :!g++ % -o %< -lm -Wall -Wextra -std=c++11 -g -fsanitize=undefined<CR>
nnoremap <F8> :w<CR> :!g++ % -o %< -lm -Wall -Wextra -std=c++11 -O2<CR>

nnoremap <CR> :w<CR>
inoremap {<CR> {<CR>}<esc>ko

if has('windows') && !empty(glob("~/.vim"))
	map "+y :w !clip.exe<CR><CR>
en
