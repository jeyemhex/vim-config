" ======[ Set environment defaults ]======
  " Set the tab width to 2 characters
  set tabstop=2
  set shiftwidth=2
  set softtabstop=2
  set expandtab

  " Page large files
  set more

  " Use the mouse
  set ttymouse=xterm2
  set mouse=a

  " Searches for files in subfolders, and show results
  set path+=**
  set wildmenu

  " Disable line wrapping
  set nowrap
  set sidescroll=2
  set sidescrolloff=2

  " Allow the cursor to be where there is no character
  set virtualedit=all

  " Add line numbering
  set number

  " Define the statusbar, and make sure it's always shown
  set laststatus=2 statusline=%02n:\ %<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

  " Show trailing whitespace
  set listchars=tab:\|·,trail:_,nbsp:~
  set list

  set updatetime=300
  " Enable syntax highlighting in vim, and make sure folds start open
  syntax on

  set foldmethod=indent
  set foldnestmax=10
  set nofoldenable
  set foldlevel=2

  " Place the viminfo file inside of ~/.vim
  set viminfo+=n~/.vim/viminfo

" ======[ Searching ]======
  set smartcase
  set ignorecase
  set incsearch
  set hlsearch

" ======[ Indentation ]======
  set autoindent
  set smartindent
  filetype indent on
  filetype plugin on
  filetype plugin indent on


" ======[ Buffer management ]======
  set hidden

"=====[ Smarter interstitial completions of identifiers ]=============
augroup Undouble_Completions
    autocmd!
    autocmd CompleteDone *  call Undouble_Completions()
augroup None

function! Undouble_Completions ()
    let col  = getpos('.')[2]
    let line = getline('.')
    call setline('.', substitute(line, '\(\k\+\)\%'.col.'c\zs\1', '', ''))
endfunction

