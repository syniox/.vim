""" General

syntax on
color slate

set nu sc sw=4 ts=4 bs=start,eol,indent
set et sta " et: expandtab 空格代替缩进 sta: smarttab 智能退格
set wmnu wig=*.swp
filetype indent on

set updatetime=200 " 减少重渲染延迟

" 取得本文件所在的目录
let s:home = fnamemodify(resolve(expand('<sfile>:p')), ':h')
" 定义加载文件的命令
command! -nargs=1 LoadScript exec 'so '.s:home.'/'.'<args>'

LoadScript init/init-config.vim
LoadScript init/init-keymaps.vim
LoadScript init/init-plugins.vim

""" Movearound

nnoremap <CR> :w<CR>
imap {<CR> {<CR>}<esc>ko
nnoremap j gj
nnoremap k gk

""" Compile

run eval.vim " 载入函数

nnoremap <F10> :call Dbuild()<CR>
nnoremap <F9> :call Debug()<CR>
nnoremap <F8> :w<CR> :!g++ % -o %< -lm -Wall -Wextra -std=c++14 -O2<CR>

if has('windows') && !empty(glob("~/.vim"))
	map "+y :w !clip.exe<CR><CR>
en

