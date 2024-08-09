""" General

syntax on

set nu sc sw=4 ts=4 bs=start,eol,indent
set et sta " et: expandtab 空格代替缩进 sta: smarttab 智能退格
set wmnu wig=*.swp
set mouse=a
filetype indent on

set updatetime=100 " 减少重渲染延迟
set lazyredraw

" 取得本文件所在的目录
let s:home = fnamemodify(resolve(expand('<sfile>:p')), ':h')
" 定义加载文件的命令
command! -nargs=1 LoadScript exec 'so '.s:home.'/'.'<args>'

LoadScript init/init-config.vim
LoadScript init/init-keymaps.vim
LoadScript init/init-plugins.vim

""" Movearound

nnoremap <CR> :w<CR>
inoremap {<CR> {<CR>}<esc>ko
nnoremap j gj
nnoremap k gk
