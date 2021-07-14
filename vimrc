" Appearance
syntax on
color slate-s

" Options
set shortmess=atI
set backspace=start,indent,eol
set number
set autoindent
set tabstop=4
set shiftwidth=4
set showcmd
set wildmenu
set wildignore=*.swp
filetype indent on

" Compilation
nnoremap <silent> <F9> :w<cr>:!g++ % -o %< -std=c++11 -g -lm -Wall -fsanitize=undefined<cr>
nnoremap <silent> <F8> :w<cr>:!g++ % -o %< -std=c++11 -O2 <cr>
inoremap <silent> <F9> <esc><F9>
inoremap <silent> <F8> <esc><F8>

" Actions
nnoremap <cr> :w<cr>

" Completion
inoremap <silent> {<CR> {<CR>}<esc>ko
