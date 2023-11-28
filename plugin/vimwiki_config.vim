let g:vimwiki_folding = 'custom'
let g:vimwiki_list = [{'path': '~/Work/RSE/notebook/',
                      \'auto_toc': 1,
                      \'syntax': 'markdown',
                      \'ext': '.md'}]
let g:vimwiki_diary_frequency = 'weekly'

autocmd FileType markdown nmap <buffer> <leader>wd :VimwikiMakeDiaryNote<CR>

function! ToggleCalendar()
  execute ":Calendar"
  if exists("g:calendar_open")
    if g:calendar_open == 1
      execute "q"
      unlet g:calendar_open
    else
      g:calendar_open = 1
    end
  else
    let g:calendar_open = 1
  end
endfunction

autocmd FileType markdown nmap <buffer> <leader>wc :call ToggleCalendar()<CR>

