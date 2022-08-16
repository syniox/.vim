syntax on
color slate

set nu sc sw=4 ts=4 bs=start,eol,indent
set et sta " et: expandtab 空格代替缩进 sta: smarttab 智能退格
set wmnu wig=*.swp
filetype indent on

run eval.vim " 载入函数

" nnoremap <F10> :w<CR> :!rustc % -o %<<CR>
nnoremap <F10> :call Dbuild()<CR>
nnoremap <F9> :call Debug()<CR>
nnoremap <F8> :w<CR> :!g++ % -o %< -lm -Wall -Wextra -std=c++14 -O2<CR>

nnoremap <CR> :w<CR>
inoremap {<CR> {<CR>}<esc>ko

if has('windows') && !empty(glob("~/.vim"))
	map "+y :w !clip.exe<CR><CR>
en

""" Plugins

"" nerdtree
let NERDTreeWinSize = 24 
autocmd VimEnter * NERDTree | wincmd p
nnoremap <F2> :NERDTreeToggle<CR>
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
