"EJH" call EnableCoc()

setlocal tabstop=4
setlocal shiftwidth=4
setlocal softtabstop=4

map <f5> :make<CR>

let g:ale_c_cc_options = "-Wall -std=c++17 -fopenmp"

augroup CPP
  autocmd!
  autocmd BufWritePost <buffer> call MaybeUpdateTags()
augroup END

