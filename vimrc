" Appearance
syntax on
color slate

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
nnoremap <silent> <F9> :w<cr>:!g++ % -o %< -g -lm -Wall -std=c++98 -ftrapv -fsanitize=undefined<cr>
nnoremap <silent> <F8> :w<cr>:!g++ % -o %< -O2 -std=c++11<cr>
inoremap <silent> <F9> <esc><F9>
inoremap <silent> <F8> <esc><F8>

" Actions
nnoremap <cr> :w<cr>

" Completion
inoremap <silent> {<CR> {<CR>}<esc>ko
