" ======[ Set environment defaults ]======
  " Set the tab width to 2 characters
  set tabstop=2
  set shiftwidth=2
  set softtabstop=2
  set expandtab

  " Page large files
  set more

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

  " Enable syntax highlighting in vim, and make sure folds start open
  syntax on

  set foldmethod=indent
  set foldnestmax=10
  set nofoldenable
  set foldlevel=2

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
