""" Plugins

call plug#begin()
    " General
    Plug 'preservim/nerdtree' ", { 'on':  'NERDTreeToggle' }
    Plug 'jistr/vim-nerdtree-tabs'
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
    " Fuzzy Search
    Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
    " Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    " Plug 'junegunn/fzf.vim'
    " Complete
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Plug 'SirVer/ultisnips'
    " Plug 'honza/vim-snippets'
    " Appearance
    " Plug 'vim-airline/vim-airline'
    " Plug 'vim-airline/vim-airline-themes'
    " Compile
    Plug 'skywind3000/asyncrun.vim'

" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()

"" NERDTree
let NERDTreeWinSize = 24 
let NERDTreeRespectWildIgnore = 1
" nnoremap <F2> :NERDTreeToggle<CR>
" Exit Vim if NERDTree is the only window remaining in the only tab.
" autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif


"" NERDTreeTabs
let g:nerdtree_tabs_open_on_console_startup = 1
let g:nerdtree_tabs_open_on_new_tab=1
" let g:nerdtree_tabs_meaningful_tab_names=1
let g:nerdtree_tabs_autoclose=1
let g:nerdtree_tabs_synchronize_view=1
nnoremap <F2> :NERDTreeTabsToggle<CR>
" nnoremap <F2> <Plug>NERDTreeTabsToggle " doesn't work right now


"" markdown-preview.nvim
nnoremap <C-p> <Plug>MarkdownPreviewToggle


"" coc.nvim
" Map <tab> for trigger completion, completion confirm, snippet expand and jump
inoremap <silent><expr> <TAB>
  \ coc#pum#visible() ? coc#_select_confirm() :
  \ coc#expandableOrJumpable() ?
  \ "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
  \ CheckBackspace() ? "\<TAB>" :
  \ coc#refresh()

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
let g:coc_snippet_next = '<tab>'

" GoTo code navigation.
nnoremap <silent> gd <Plug>(coc-definition)
nnoremap <silent> gy <Plug>(coc-type-definition)
nnoremap <silent> gi <Plug>(coc-implementation)
nnoremap <silent> gr <Plug>(coc-references)



"" LeaderF
"
" let g:Lf_WindowPosition = 'popup'
let g:Lf_ShortcutF = '<leader>ff'
let g:Lf_WindowHeight = 0.30
let g:Lf_WorkingDirectoryMode = 'Ac'
" LeaderF gtags extension
let g:Lf_GtagsAutoGenerate = 1
let g:Lf_RootMarkers = ['.git','.hg','.svn','.root']
let g:Lf_Gtagslabel = 'native-pygments'
noremap <leader>ft :<C-U><C-R>=printf("Leaderf gtags")<CR><CR>
noremap <leader>fr :<C-U><C-R>=printf("Leaderf! gtags -r %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <leader>fd :<C-U><C-R>=printf("Leaderf! gtags -d %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <leader>fo :<C-U><C-R>=printf("Leaderf! gtags --recall %s", "")<CR><CR>
noremap <leader>fn :<C-U><C-R>=printf("Leaderf gtags --next %s", "")<CR><CR>
noremap <leader>fp :<C-U><C-R>=printf("Leaderf gtags --previous %s", "")<CR><CR>


