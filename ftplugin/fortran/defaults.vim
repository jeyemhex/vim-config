nmap <f5> :make<CR>

" Next and previous routine aliases
nmap [[ k?\v^\s*(recursive\s+)\?(function\|subroutine)\s+.*$<CR>ztkjw
nmap ]]  /\v^\s*(recursive\s+)?(function\|subroutine)\s+.*$<CR>ztkjw

" C/Perl-esque aliases for Fortran (because why not?)
imap += =<esc>^yt=$A <esc>pA+
imap -= =<esc>^yt=$A <esc>pA-
imap *= =<esc>^yt=$A <esc>pA*
"EJH"     imap /= =<esc>^yt=$A <esc>pA/
imap ++ =<esc>^yt=A<esc>pA+1
imap -- =<esc>^yt=A<esc>pA-1
imap <bar><bar> .or.
imap && .and.
imap !! .not.

" Easy 'say' command
iabbrev say print *,

nmap <leader>fp :%s/module/program/g<CR>13gg2ddl

augroup FORTRAN
  autocmd!
  autocmd BufRead,BufNewFile *.f    set cc=6,72
  autocmd BufWritePost  *.f90       call MaybeUpdateTags()
augroup END
