""" Tabs
" Alt+N切换Tab
for i in range(1,7) " Normal mode
    exec "nnoremap <m-".i."> :tabn ".i."<cr>"
    " has('terminal') && exists(':terminal') == 2 && has('patch-8.1.1'):
    exec "tnoremap <m-".i."> <c-w>:tabn ".i."<cr>"
endfor

" Tab操作
nnoremap <silent> <leader>tc :tabnew<cr>
nnoremap <silent> <leader>tq :tabclose<cr>
nnoremap <silent> <m-n> :tabnew<cr>
nnoremap <silent> <m-q> :tabclose<cr>
nnoremap <silent> <m-m> :tab term<cr>

function! Tab_MoveLeft()
	let l:tabnr = tabpagenr() - 2
	if l:tabnr >= 0
		exec 'tabmove '.l:tabnr
	endif
endfunc
function! Tab_MoveRight()
	let l:tabnr = tabpagenr() + 1
	if l:tabnr <= tabpagenr('$')
		exec 'tabmove '.l:tabnr
	endif
endfunc
noremap <silent><m-,> :call Tab_MoveLeft()<cr>
noremap <silent><m-.> :call Tab_MoveRight()<cr>


""" Splits
" 快速切换窗口
nnoremap <silent><m-h> :wincmd h<cr>
nnoremap <silent><m-j> :wincmd j<cr>
nnoremap <silent><m-k> :wincmd k<cr>
nnoremap <silent><m-l> :wincmd l<cr>
inoremap <silent><m-h> <esc>:wincmd h<cr>
inoremap <silent><m-j> <esc>:wincmd j<cr>
inoremap <silent><m-k> <esc>:wincmd k<cr>
inoremap <silent><m-l> <esc>:wincmd l<cr>
tnoremap <silent><m-h> <c-w>:wincmd h<cr>
tnoremap <silent><m-j> <c-w>:wincmd j<cr>
tnoremap <silent><m-k> <c-w>:wincmd k<cr>
tnoremap <silent><m-l> <c-w>:wincmd l<cr>


""" mapleader
" let mapleader = ';'
