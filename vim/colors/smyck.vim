" ----------------------------------------------------------------------------
" Vim color file
" Maintainer:   John-Paul Bader <contact@smyck.org>
" Last Change:  2012 March
" License:      Beer Ware
" ----------------------------------------------------------------------------

let g:colors_name = "smyck"

highlight clear Normal
set background=dark
set linespace=2

" Syntaxeinstellungen zuruecksetzen, wenn Syntax Highlighting aktiviert ist
if exists("syntax_on")
  syntax reset
endif

hi Normal               cterm=none ctermbg=none     ctermfg=15      gui=none        guibg=#272727   guifg=#F7F7F7
hi LineNr               cterm=none ctermbg=none     ctermfg=8       gui=none        guibg=#272727   guifg=#8F8F8F
hi StatusLine           cterm=none ctermbg=8        ctermfg=15      gui=none        guibg=#5D5D5D   guifg=#FBFBFB
hi StatusLineNC         cterm=none ctermbg=15       ctermfg=8       gui=none        guibg=#5D5D5D   guifg=#FBFBFB
hi Search               cterm=none ctermbg=6        ctermfg=15
hi IncSearch            cterm=none ctermbg=3        ctermfg=8
hi ColumnMargin         cterm=none ctermbg=0
hi Error                cterm=none ctermbg=1        ctermfg=15
hi ErrorMsg             cterm=none ctermbg=1        ctermfg=15
hi NonText              cterm=bold ctermbg=none     ctermfg=8       gui=bold guifg=#898989 guibg=#060606
hi ModeMsg              cterm=bold ctermbg=none     ctermfg=10
hi Pmenu                cterm=none ctermbg=8        ctermfg=15
hi PmenuSel             cterm=none ctermbg=15       ctermfg=8
hi PmenuSbar            cterm=none ctermbg=15       ctermfg=8
hi SpellBad             cterm=none ctermbg=1        ctermfg=15
hi SpellCap             cterm=none ctermbg=4        ctermfg=15
hi SpellRare            cterm=none ctermbg=4        ctermfg=15
hi SpellLocal           cterm=none ctermbg=4        ctermfg=15
hi Visual               cterm=none ctermbg=15       ctermfg=8
hi Directory            cterm=none ctermbg=none     ctermfg=4
hi SpecialKey           cterm=none ctermbg=none     ctermfg=8

" ----------------------------------------------------------------------------
" Syntax Highlighting
" ----------------------------------------------------------------------------
" Universelle Einstellungen
hi Keyword              cterm=none ctermbg=none ctermfg=10          gui=none        guifg=#D1FA71
hi Comment              cterm=none ctermbg=none ctermfg=8           gui=none        guifg=#8F8F8F
hi Delimiter            cterm=none ctermbg=none ctermfg=15          gui=none        guifg=#F7F7F7
hi Identifier           cterm=none ctermbg=none ctermfg=12          gui=none        guifg=#96D9F1
hi Structure            cterm=none ctermbg=none ctermfg=magenta     gui=none        guifg=#9DEEF2
hi Ignore               cterm=none ctermbg=none ctermfg=magenta     gui=none        guifg=bg
hi Constant             cterm=none ctermbg=none ctermfg=12          gui=none        guifg=#96D9F1
hi PreProc              cterm=none ctermbg=none ctermfg=10          gui=none        guifg=#D1FA71
hi Type                 cterm=none ctermbg=none ctermfg=12          gui=none        guifg=#96D9F1
hi Statement            cterm=none ctermbg=none ctermfg=10          gui=none        guifg=#D1FA71
hi Special              cterm=none ctermbg=none ctermfg=magenta     gui=none        guifg=#d7d7d7
hi String               cterm=none ctermbg=none ctermfg=3           gui=none        guifg=#F6DC69
hi Number               cterm=none ctermbg=none ctermfg=3           gui=none        guifg=#F6DC69
hi Underlined           cterm=none ctermbg=none ctermfg=magenta     gui=underline   guibg=#272727
hi Symbol               cterm=none ctermbg=none ctermfg=9           gui=none        guifg=#FAB1AB
hi Method               cterm=none ctermbg=none ctermfg=15          gui=none        guifg=#F7F7F7
hi Interpolation        cterm=none ctermbg=none ctermfg=6           gui=none        guifg=#A9D500

hi link rubyBeginend          Keyword
hi link rubyClass             Keyword
hi link rubyModule            Keyword
hi link rubyKeyword           Keyword
hi link rubyOperator          Method
hi link rubyIdentifier        Keyword
hi link rubyClassVariable     Symbol
hi link rubyInstanceVariable  Constant
hi link rubyGlobalVariable    Constant
hi link rubyClassVariable     Method
hi link rubyConstant          Constant
hi link rubySymbol            Symbol
hi link rubyFunction          Constant
hi link rubyControl           Keyword
hi link rubyConditional       Keyword
hi link rubyInterpolation     Interpolation
hi link rubyInterpolationDelimiter    Interpolation
hi link rubyRailsMethod       Method

" Erlang
hi link erlangAtom            Keyword
