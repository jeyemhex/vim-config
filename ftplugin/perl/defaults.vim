setlocal tabstop=4
setlocal shiftwidth=4
setlocal softtabstop=4

"Adjust keyword characters to match Perlish identifiers...
setlocal iskeyword+=$
setlocal iskeyword+=%
setlocal iskeyword+=@-@
setlocal iskeyword+=:
setlocal iskeyword-=,

map <f5> :perl %<CR>

let b:match_words = '":"'
let perl_fold=1



