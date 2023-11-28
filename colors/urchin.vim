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

hi Normal ctermbg=0 guibg=#202020 ctermfg=7 guifg=#D3D7CF

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

hi Cursor       term=none    ctermfg=7 guifg=#D3D7CF  ctermbg=1 guibg=#CC0000
hi CursorIM     term=reverse    ctermfg=0 guifg=#202020  ctermbg=7 guibg=#D3D7CF
hi Directory    term=underline  ctermfg=14 guifg=#34E2E2
hi DiffAdd      term=bold       ctermfg=10 guifg=#8AE234 ctermbg=0 guibg=#202020
hi DiffChange   term=none       ctermfg=5 guifg=#75507B  ctermbg=0 guibg=#202020
hi DiffDelete   term=bold       ctermfg=9 guifg=#EF2929  ctermbg=0 guibg=#202020
hi DiffText     term=bold       ctermfg=3 guifg=#C4A000  ctermbg=0 guibg=#202020
hi ErrorMsg     term=NONE       ctermfg=9 guifg=#EF2929  ctermbg=0 guibg=#202020
hi VertSplit    term=NONE       ctermfg=7 guifg=#D3D7CF
hi Folded       term=NONE       ctermfg=7 guifg=#D3D7CF  ctermbg=4 guibg=#3465A4
hi FoldColumn   term=NONE       ctermfg=12 guifg=#739FCF ctermbg=0 guibg=#202020
hi IncSearch    term=NONE       ctermfg=2 guifg=#4E9A06  ctermbg=0 guibg=#202020
hi LineNr       term=NONE       ctermfg=12 guifg=#739FCF ctermbg=0 guibg=#202020
hi ModeMsg      term=NONE       ctermfg=7 guifg=#D3D7CF
hi MoreMsg      term=NONE       ctermfg=7 guifg=#D3D7CF
hi NonText      term=NONE       ctermfg=8 guifg=#555753
hi Question     term=NONE       ctermfg=7 guifg=#D3D7CF
hi Search       term=NONE       ctermfg=10 guifg=#8AE234 ctermbg=0 guibg=#202020
hi SpecialKey   term=NONE       ctermfg=8 guifg=#555753
hi TabLine      term=NONE       ctermfg=12 guifg=#739FCF ctermbg=0 guibg=#202020
hi TabLineFill  term=NONE       ctermfg=12 guifg=#739FCF ctermbg=0 guibg=#202020
hi StatusLine   term=NONE       ctermfg=12 guifg=#739FCF ctermbg=0 guibg=#202020
hi StatusLineNC term=NONE       ctermfg=4 guifg=#3465A4  ctermbg=0 guibg=#202020
hi Title        term=bold       ctermfg=11 guifg=#FCE94F
hi Visual       term=NONE       ctermfg=7 guifg=#D3D7CF  ctermbg=4 guibg=#3465A4
hi VisualNOS    term=NONE       ctermfg=7 guifg=#D3D7CF  ctermbg=4 guibg=#3465A4
hi WarningMsg   term=NONE       ctermfg=7 guifg=#D3D7CF
hi WildMenu     term=bold       ctermfg=0 guifg=#202020  ctermbg=7 guibg=#D3D7CF
hi Menu         term=NONE       ctermfg=0 guifg=#202020  ctermbg=7 guibg=#D3D7CF
hi PmenuSel     term=bold       ctermfg=0 guifg=#202020  ctermbg=7 guibg=#D3D7CF
hi Scrollbar    term=NONE       ctermfg=7 guifg=#D3D7CF
hi Tooltip      term=NONE       ctermfg=7 guifg=#D3D7CF

hi Comment      term=italic     ctermfg=8 guifg=#555753
hi Constant     term=NONE       ctermfg=3 guifg=#C4A000
hi Identifier   term=bold       ctermfg=7 guifg=#D3D7CF
hi Statement    term=NONE       ctermfg=1 guifg=#CC0000
hi Function     term=NONE       ctermfg=11 guifg=#FCE94F
hi PreProc      term=NONE       ctermfg=13 guifg=#AD7FA8
hi Type         term=NONE       ctermfg=2 guifg=#4E9A06
hi Special      term=bold       ctermfg=7 guifg=#D3D7CF
hi Underlined   term=underline  ctermfg=12 guifg=#739FCF
hi Ignore       term=NONE       ctermfg=7 guifg=#D3D7CF
hi Error        term=bold       ctermfg=7 guifg=#D3D7CF  ctermbg=9 guibg=#EF2929
hi Todo         term=NONE       ctermfg=7 guifg=#D3D7CF
