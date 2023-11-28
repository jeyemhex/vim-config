"======[ UI options ]======
  if has("gui_running")
    " Set the colors and fonts for gvim 
    set lines=32 columns=128
    set background=dark
    "if strftime("%H") >= 18 || strftime("%H") < 7
    "  set background=dark
    "else
    "  set background=light
    "endif

    set gfn=Comic\ Shanns\ 14
    colorscheme urchin
    "colorscheme carduelis
    nnoremap <leader>zi :set gfn=Monospace\ 14<CR>
    nnoremap <leader>zo :set gfn=Monospace\ 8<CR>
    nnoremap <leader>zn :set gfn=Monospace\ 12<CR>

    nnoremap <c-t> :tabnew<cr>
    vnoremap <c-t> :tabnew<cr>
    inoremap <c-t> :tabnew<cr>

    " No top menu bar, I'd never use it anyway
    set guioptions+=!
    set guioptions-=m
    set guioptions-=T
    set guioptions-=L
    set guioptions+=F

    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

    set fillchars+=vert:\ 

  else
    " Else, pick a nice colorscheme for the terminal
    set t_Co=256
    set background=dark

    colorscheme urchin

    runtime plugin/hexHighlight.vim

    " Change the cursor for normal/insertm mode
    let &t_SI = "\e[6 q" " Insert  mode -> Solid bar
    let &t_SR = "\e[2 q" " Replace mode -> Solid block
    let &t_EI = "\e[4 q" " Normal  mode -> Solid underline
    augroup TUI_cursor
      au!
      autocmd VimEnter * silent !echo -ne "\e[2 q"
    augroup END
  endif

  " Show the number of matches for search terms
  set shortmess-=S

" Goyo/Limelight options
  let g:goyo_width=82
  " Color name (:help cterm-colors) or ANSI code
  let g:limelight_conceal_ctermfg = 'gray'
  let g:limelight_conceal_ctermfg = 240

  " Color name (:help gui-colors) or RGB color
  let g:limelight_conceal_guifg = 'DarkGray'
  let g:limelight_conceal_guifg = '#777777'

  " Default: 0.5
  let g:limelight_default_coefficient = 0.7

  " Number of preceding/following paragraphs to include (default: 0)
  let g:limelight_paragraph_span = 1

  " Beginning/end of paragraph
  "   When there's no empty line between the paragraphs
  "   and each paragraph starts with indentation
  let g:limelight_bop = '^\s'
  let g:limelight_eop = '\ze\n^\s'

  " Highlighting priority (default: 10)
  "   Set it to -1 not to overrule hlsearch
  let g:limelight_priority = -1

  autocmd! User GoyoEnter Limelight
  autocmd! User GoyoLeave Limelight!
