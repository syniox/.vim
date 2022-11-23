""" Tabs
" Alt+N切换Tab
" for i in range(1,5)
"     exec "nnoremap <silent><m-".a:i.">:tabn ".a:i."<cr>"
" endfor
nnoremap <silent><m-1> :tabn 1<cr>
nnoremap <silent><m-2> :tabn 2<cr>
nnoremap <silent><m-3> :tabn 3<cr>
nnoremap <silent><m-4> :tabn 4<cr>

" 创建和删除Tab
nnoremap <silent> <leader>tc :tabnew<cr>
nnoremap <silent> <leader>tq :tabclose<cr>
nnoremap <silent> <m-n> :tabnew<cr>
nnoremap <silent> <m-q> :tabclose<cr>

""" Splits
" 快速切换窗口
nnoremap <silent><m-h> :wincmd h<cr>
nnoremap <silent><m-j> :wincmd j<cr>
nnoremap <silent><m-k> :wincmd k<cr>
nnoremap <silent><m-l> :wincmd l<cr>
