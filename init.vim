syntax on

set nu ai sw=4 ts=4 bs=start,eol,indent
set et sta

nnoremap <CR> :w<CR>

" Automatically switch input methods in vim
let fcitx5state=system("fcitx5-remote")
autocmd InsertLeave * :silent let fcitx5state=system("fcitx5-remote") | silent !fcitx5-remote -c
autocmd InsertEnter * :silent if fcitx5state==2 | call system("fcitx5-remote -o") | endif

run init/init-config.vim
run init/init-keymaps.vim
run init/init-plugins.vim
