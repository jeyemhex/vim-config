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

  nnoremap <bs> /[I]'m only searching for this \<bs\> to clear my screen...<cr>

  imap <F7> <Esc>:set spell!<CR>
  nmap <F7> :set spell!<CR>

  nmap <F5> :!clear; echo -e "\n"; dart %<cr>
  nmap <F6> :!clear; echo -e "\n"; flutter run -d linux<cr>
  "Ignore common mistypings
  nnoremap q: <nop>

  " Tab management
  nnoremap <C-Tab> :tabn<CR>
  nnoremap <C-S-Tab> :tabp<CR>

  map <C-w><left> :tabn<cr>
  map <C-w><right> :tabp<cr>
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

  let g:termdebug_wide=1
  nnoremap <Leader>d<cr> :silent call StartTermDebug()<cr>
  nnoremap <Leader>db :Break<CR>
  nnoremap <Leader>dd :Clear<CR>
  nnoremap <Leader>di :Step<CR>
  nnoremap <Leader>do :Over<CR>

  nnoremap <Leader>du :Until<CR>
  nnoremap <Leader>df :Finish<CR>
  nnoremap <Leader>dc :Continue<CR>
  nnoremap <Leader>ds :Stop<CR>

  nnoremap <Leader>de :Evaluate<CR>
  vnoremap <Leader>de :'<,'>Evaluate<CR>

  nnoremap <Leader>dl :CocDiagnostics<CR>

  function StartTermDebug()
    execute ':Termdebug'
    set cursorline

  endfunction

  map <Up>        <C-W>k
  map <Down>      <C-W>j
  map <Left>      <C-W>h
  map <Right>     <C-W>l

  map <S-Up>        <C-W>K
  map <S-Down>      <C-W>J
  map <S-Left>      <C-W>H
  map <S-Right>     <C-W>L
