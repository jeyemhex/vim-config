let s:hidden_all = 0
let g:hide_all_default = 1
function! ToggleHiddenAll()
    if s:hidden_all  == 0
        let s:hidden_all = 1
        set noshowmode
        set noruler
        set nonumber
        set laststatus=0
        set noshowcmd
        set showtabline=0
        silent! SignatureToggleSigns
        echon ''
    else
        let s:hidden_all = 0
        set showmode
        set ruler
        set number
        set laststatus=2
        set showcmd
        set showtabline=2
        SignatureToggleSigns
    endif
endfunction

nnoremap <silent> <S-h> :call ToggleHiddenAll()<CR>

if g:hide_all_default
  call ToggleHiddenAll()
endif
