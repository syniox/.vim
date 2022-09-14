function Debug()
    w
    if &filetype ==# "cpp"
        execute "!g++ % -o %< -lm -Wall -Wextra -std=c++14 -g -fsanitize=undefined"
    en
    if &filetype ==# "rust"
        execute "!rustc % -o %<"
    en
endfunction

function Dbuild()
    w
    if &filetype ==# "rust"
        execute "!cargo build"
    en
endfunction
