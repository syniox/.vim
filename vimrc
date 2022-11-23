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

""" Plugins

call plug#begin()
    " General
    Plug 'preservim/nerdtree', { 'on':  'NERDTreeToggle' }

    Plug 'jistr/vim-nerdtree-tabs'
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
    " Fuzzy Search
    " Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    " Plug 'junegunn/fzf.vim'
    " Complete
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Plug 'SirVer/ultisnips'
    " Plug 'honza/vim-snippets'
    " Appearance
    " Plug 'vim-airline/vim-airline'
    " Plug 'vim-airline/vim-airline-themes'

" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()

"" nerdtree
let NERDTreeWinSize = 24 
autocmd VimEnter * NERDTree | wincmd p
" nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <F2> <Plug>NERDTreeToggle
" nmap <F2> <Plug>NERDTreeToggle
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" autocmd BufEnter * NERDTreeMirror
" autocmd BufWinEnter * :NERDTreeMirror<CR>

"" markdown-preview.nvim
nnoremap <C-p> <Plug>MarkdownPreviewToggle


"" coc.nvim
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" GoTo code navigation.
nnoremap <silent> gd <Plug>(coc-definition)
nnoremap <silent> gy <Plug>(coc-type-definition)
nnoremap <silent> gi <Plug>(coc-implementation)
nnoremap <silent> gr <Plug>(coc-references)
