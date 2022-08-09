" ======[ Remapped keys ]======

  " Swap visual and block modes
  nnoremap v <c-v>
  nnoremap <c-v> v

  " Insert mode: Ctrl-S
  inoremap <C-S> <Esc>:w<cr>i

  " Single-key shortcuts
  nnoremap J m`J``
  nnoremap <expr> M ':%s/' . @/ . '//g<LEFT><LEFT>'
  vnoremap <expr> M ':s/' . @/ . '//g<LEFT><LEFT>'

  nnoremap S  :%s//g<LEFT><LEFT>
  vnoremap S  :s//g<LEFT><LEFT>

  nnoremap <bs> /[I]'m only searching for this ©®@℗ to clear my screen...<cr>

  imap <F7> <Esc>:set spell!<CR>
  nmap <F7> :set spell!<CR>

  "Ignore common mistypings
  nnoremap q: <nop>

  " Leader mappings
  let mapleader=" "

  " Tab management
  nnoremap <C-Tab> :tabn<CR>
  nnoremap <C-S-Tab> :tabp<CR>

  " Buffer management
  set hidden
  nnoremap <Leader>` :buffers<CR>:buffer<Space>
  nnoremap <Leader><Tab> :b #<CR>
  nnoremap <Leader>1 :1b<CR>
  nnoremap <Leader>2 :2b<CR>
  nnoremap <Leader>3 :3b<CR>
  nnoremap <Leader>4 :4b<CR>
  nnoremap <Leader>5 :5b<CR>
  nnoremap <Leader>6 :6b<CR>
  nnoremap <Leader>7 :7b<CR>
  nnoremap <Leader>8 :8b<CR>
  nnoremap <Leader>9 :9b<CR>
  nnoremap <Leader>0 :10b<CR>
  nnoremap <Leader>- :bp<CR>
  nnoremap <Leader>= :bn<CR>
