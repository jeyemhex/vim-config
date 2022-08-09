" Vim color file
" Maintainer:   Your name <youremail@something.com>
" Last Change:
" URL:

" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors

" your pick:
set background=dark	" or light
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="urchin"

"hi Normal

" OR

" highlight clear Normal
" set background&
" highlight clear
" if &background == "light"
"   highlight Error ...
"   ...
" else
"   highlight Error ...
"   ...
" endif

" A good way to see what your colorscheme does is to follow this procedure:
" :w
" :so %
"
" Then to see what the current setting is use the highlight command.
" For example,
" 	:hi Cursor
" gives
"	Cursor         xxx guifg=bg guibg=fg

" Uncomment and complete the commands you want to change from the default.

hi Cursor       term=none    ctermfg=7  ctermbg=1
hi CursorIM     term=reverse    ctermfg=0  ctermbg=7
hi Directory    term=underline  ctermfg=14
hi DiffAdd      term=bold       ctermfg=10 ctermbg=0
hi DiffChange   term=none       ctermfg=5  ctermbg=0
hi DiffDelete   term=bold       ctermfg=9  ctermbg=0
hi DiffText     term=bold       ctermfg=3  ctermbg=0
hi ErrorMsg     term=NONE       ctermfg=9  ctermbg=0
hi VertSplit    term=NONE       ctermfg=7
hi Folded       term=NONE       ctermfg=7  ctermbg=4
hi FoldColumn   term=NONE       ctermfg=12 ctermbg=0
hi IncSearch    term=NONE       ctermfg=2  ctermbg=0
hi LineNr       term=NONE       ctermfg=12 ctermbg=0
hi ModeMsg      term=NONE       ctermfg=7
hi MoreMsg      term=NONE       ctermfg=7
hi NonText      term=NONE       ctermfg=8
hi Question     term=NONE       ctermfg=7
hi Search       term=NONE       ctermfg=10 ctermbg=0
hi SpecialKey   term=NONE       ctermfg=8
hi StatusLine   term=NONE       ctermfg=12 ctermbg=0
hi StatusLineNC term=NONE       ctermfg=4  ctermbg=0
hi Title        term=bold       ctermfg=11
hi Visual       term=NONE       ctermfg=7  ctermbg=4
hi VisualNOS    term=NONE       ctermfg=7  ctermbg=4
hi WarningMsg   term=NONE       ctermfg=7
hi WildMenu     term=bold       ctermfg=0  ctermbg=7
hi Menu         term=NONE       ctermfg=0  ctermbg=7
hi PmenuSel     term=bold       ctermfg=0  ctermbg=7
hi Scrollbar    term=NONE       ctermfg=7
hi Tooltip      term=NONE       ctermfg=7

hi Comment      term=italic     ctermfg=8
hi Constant     term=NONE       ctermfg=3
hi Identifier   term=bold       ctermfg=7
hi Statement    term=NONE       ctermfg=1
hi Function     term=NONE       ctermfg=11
hi PreProc      term=NONE       ctermfg=13
hi Type         term=NONE       ctermfg=2
hi Special      term=bold       ctermfg=7
hi Underlined   term=underline  ctermfg=12
hi Ignore       term=NONE       ctermfg=7
hi Error        term=bold       ctermfg=7  ctermbg=9
hi Todo         term=NONE       ctermfg=7
