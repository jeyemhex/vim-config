  set tags+=./.tags

  let g:tagbar_position = "left"

  nnoremap <Leader>tt :TagbarToggle<cr>
  nnoremap <Leader>t] :TagbarJumpNext<cr>
  nnoremap <Leader>t[ :TagbarJumpPrev<cr>
  nnoremap <Leader>tg :tag<cr>
  nnoremap <Leader>tg g<c-]>

  " Update tags file if one exists
  function! MaybeUpdateTags()
    if filereadable(".tags")
      silent !ctags --exclude=cellmerge_doc.tex -Rf .tags
      "echo "Updated tags!"
    endif
  endfunction

