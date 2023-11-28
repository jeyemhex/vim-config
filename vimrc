" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin()
Plug 'vimwiki/vimwiki', {'branch': 'dev', 'for': ['markdown']}
Plug 'godlygeek/tabular', {'for': ['markdown']}
Plug 'preservim/vim-markdown', {'for': ['markdown']}
Plug 'dense-analysis/ale', {'branch': 'master', 'for': ['c', 'cpp', 'perl', 'go']}
Plug 'preservim/tagbar', {'for': ['c', 'cpp', 'fortran']}
Plug 'fatih/vim-go', {'for': ['go']}
Plug 'vim-perl/vim-perl', { 'for': 'perl', 'do': 'make clean carp dancer highlight-all-pragmas moose test-more try-tiny' }
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'kshenoy/vim-signature'
Plug 'jpalardy/vim-slime'
Plug 'klafyvel/vim-slime-cells'
Plug 'jeyemhex/vim-castep'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-abolish'

" Colorschemes
Plug 'NLKNguyen/papercolor-theme'
Plug 'morhetz/gruvbox'
Plug 'jacoborus/tender.vim'

" Soundschemes
"EJH Plug 'skywind3000/vim-keysound'
call plug#end()

packadd! editexisting
packadd! cfilter
packadd! matchit
packadd! termdebug

let mapleader=" "

let g:SignatureEnabledAtStartup=0

" Slime configuration
let g:slime_target = "tmux"
let g:slime_paste_file = tempname()
let g:slime_default_config = {"socket_name": "default", "target_pane": "{last}"}
let g:slime_dont_ask_default = 1
let g:slime_no_mappings = 1

let g:slime_cell_delimiter = "#%"
xmap <leader>sp <Plug>SlimeRegionSend
nmap <leader>sp <Plug>SlimeParagraphSend
nmap <leader>ss <Plug>SlimeConfig
nmap <leader>sC <Plug>SlimeSendCell
nmap <leader>sc <Plug>SlimeCellsSendAndGoToNext
nmap <leader>sn <Plug>SlimeCellsNext
nmap <leader>sp <Plug>SlimeCellsPrev



