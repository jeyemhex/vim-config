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

    set gfn=Monospace\ 12
    colorscheme jellybeans
    "colorscheme carduelis
    nnoremap <leader>zi :set gfn=Monospace\ 14<CR>
    nnoremap <leader>zo :set gfn=Monospace\ 8<CR>
    nnoremap <leader>zn :set gfn=Monospace\ 12<CR>

    nnoremap <c-t> :tabnew<cr>
    vnoremap <c-t> :tabnew<cr>
    inoremap <c-t> :tabnew<cr>

    " No top menu bar, I'd never use it anyway
    set guioptions+=!
    set guioptions-=T
    set guioptions-=r
    set guioptions-=L

    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

    set fillchars+=vert:\ 

  else
    " Else, pick a nice colorscheme for the terminal
    set t_Co=256
    set background=dark

    colorscheme urchin

    runtime plugin/hexHighlight.vim

  endif
