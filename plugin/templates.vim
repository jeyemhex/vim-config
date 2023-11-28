let g:template_dir = "~/.vim/templates/archive"
let g:template_opts = { 
    \ 'author': 'Ed Higgins',
    \ 'email': (expand('%:p') =~ 'Work' ? 'ed.higgins@york.ac.uk' : 'ed.j.higgins@gmail.com'),
    \ 'license': 'MIT',
    \ 'date': system('date -I | perl -pe "chomp"'),
    \ 'file': expand('%:t'),
    \ 'fileuc': toupper(expand('%:t')),
    \ 'filename': expand('%:t'),
    \ 'filenameuc': toupper(expand('%:t')),
    \ 'class': expand('%:t:r'),
    \ 'classuc': toupper(expand('%:t:r')),
    \ 'guard': toupper(expand('%:t:r') . '_h'),
    \ }

augroup templates
  autocmd!
  autocmd BufNewFile *.sh call ReadSkel(g:template_dir . "/skeleton.sh")
  autocmd BufNewFile *.f90,*.F90,*.f03 call ReadSkel(g:template_dir . "/skeleton.f90")
  autocmd BufNewFile *.h call ReadSkel(g:template_dir . "/skeleton.h")
  autocmd BufNewFile *.c,*.cpp,*.cxx call ReadSkel(g:template_dir . "/skeleton.c")
  autocmd BufNewFile *.pl call ReadSkel(g:template_dir . "/skeleton.pl")
  autocmd BufNewFile *.pm call ReadSkel(g:template_dir . "/skeleton.pm")
  autocmd BufNewFile *.htm,*.html call ReadSkel(g:template_dir . "/skeleton.html")

augroup END

function! ReadSkel(file)
  let b:cplocal = &cpoptions
  set cpoptions-=a

  " Read the template into the current buffer
  execute "0read "a:file

  " Remove the extra newline at the end
  normal Gddgg

  " Substitute useful tags
  for key in keys(g:template_opts)
    silent! execute ':%s/%' . toupper(key) . '%/' . get(g:template_opts, key) . '/'
  endfor

  " Move the cursor to the %HERE% tag and clear it
  call setpos('.', searchpos('%HERE%'))
  :s/%HERE%//
  exec "normal $"

  let &cpoptions = b:cplocal

endfunction
