"======[ Diff options ]======
  " Set some pretty colours for diffing
  if &diff
    syntax off
    hi Folded guifg=#000000 guibg=#000000 gui=bold  ctermfg=15  ctermbg=8 cterm=none
  endif

  " Update diffing after saving changes
  augroup diffoptions
    autocmd!
    autocmd BufWritePost * if &diff | diffupdate | endif
  augroup END
