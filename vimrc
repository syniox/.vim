""" General

syntax on
color slate

set nu sc sw=4 ts=4 bs=start,eol,indent
set et sta " et: expandtab 空格代替缩进 sta: smarttab 智能退格
set wmnu wig=*.swp
filetype indent on

set updatetime=200 " 减少重渲染延迟

""" Movearound

nmap <CR> :w<CR>
imap {<CR> {<CR>}<esc>ko
nmap j gj
nmap k gk

""" Compile

run eval.vim " 载入函数

nnoremap <F10> :call Dbuild()<CR>
nnoremap <F9> :call Debug()<CR>
nnoremap <F8> :w<CR> :!g++ % -o %< -lm -Wall -Wextra -std=c++14 -O2<CR>

if has('windows') && !empty(glob("~/.vim"))
	map "+y :w !clip.exe<CR><CR>
en

""" Plugins

call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes
    Plug 'preservim/nerdtree', { 'on':  'NERDTreeToggle' }
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
"   Plug 'vim-airline/vim-airline'
"   Plug 'vim-airline/vim-airline-themes'


" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()


"" nerdtree
let NERDTreeWinSize = 24 
autocmd VimEnter * NERDTree | wincmd p
nmap <F2> :NERDTreeToggle<CR>
" nmap <F2> <Plug>NERDTreeToggle
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

"" markdown-preview.nvim
nmap <C-p> <Plug>MarkdownPreviewToggle
