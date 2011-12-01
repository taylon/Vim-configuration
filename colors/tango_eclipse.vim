" Vim color file
" Author: Taylon Silmer <taylonsilva@gmail.com>
" Version: 0.1
" URL: http://www.vim.org/?scripts=
set background=light
highlight clear
if exists("syntax_on")
    syntax reset
endif
 
let g:colors_name = "tango_eclipse"
 
if exists("g:bg_tango") && g:bg_tango == 1
    highlight Normal gui=none guifg=#2e3436 guibg=#eeeeec
else
    highlight Normal gui=none guifg=#2e3436 guibg=#ffffff
endif
 
 
" Search
highlight IncSearch gui=underline guifg=#2e3436 guibg=#fce94f
highlight Search gui=none guifg=#eeeeec guibg=#ad7fa8 ctermbg=1

" Messages
highlight ErrorMsg gui=none guifg=#f8f8f8 guibg=#4040ff
highlight WarningMsg gui=none guifg=#f8f8f8 guibg=#4040ff
highlight ModeMsg gui=none guifg=#d06000 guibg=bg
highlight MoreMsg gui=none guifg=#0090a0 guibg=bg
highlight Question gui=none guifg=#8000ff guibg=bg
 
" Split area
highlight StatusLine gui=none guifg=#ffffff guibg=#4570aa cterm=bold ctermbg=blue ctermfg=white
highlight StatusLineNC gui=none guifg=#ffffff guibg=#75a0da cterm=none ctermfg=darkgrey ctermbg=blue
highlight VertSplit gui=none guifg=#f8f8f8 guibg=#904838 ctermfg=darkgrey cterm=none ctermbg=blue
highlight WildMenu gui=none guifg=#f8f8f8 guibg=#ff3030
 
" Diff
highlight DiffText gui=none guifg=red guibg=#ffd0d0 cterm=bold ctermbg=5 ctermfg=3
highlight DiffChange gui=none guifg=black guibg=#ffe7e7 cterm=none ctermbg=5 ctermfg=7
highlight DiffDelete gui=none guifg=bg guibg=#e7e7ff ctermbg=black
highlight DiffAdd gui=none guifg=blue guibg=#e7e7ff ctermbg=green cterm=bold
 
" Cursor
highlight Cursor gui=none guifg=#eeeeec guibg=#729fcf
highlight CursorLine guibg=#eeeeec
highlight MatchParen gui=bold guifg=#eeeeec guibg=#ce5c00
 
" Fold
highlight Folded gui=none guifg=#804030 guibg=#fff0d0 ctermbg=black ctermfg=black cterm=bold
highlight FoldColumn gui=none guifg=#6b6b6b guibg=#e7e7e7 ctermfg=black ctermbg=white
 
" Popup Menu
highlight PMenu ctermbg=green ctermfg=white
highlight PMenuSel ctermbg=white ctermfg=black
highlight PMenuSBar ctermbg=red ctermfg=white
highlight PMenuThumb ctermbg=white ctermfg=red
 
" Other
highlight Directory gui=none guifg=#7050ff guibg=bg
highlight LineNr gui=none guifg=#6b6b6b guibg=#eeeeee
highlight NonText gui=none guifg=#707070 guibg=#e7e7e7
highlight SpecialKey gui=none guifg=#c0c0c0 guibg=bg cterm=none ctermfg=4
highlight Title gui=bold guifg=#0033cc guibg=bg
highlight Visual gui=none guifg=#804020 guibg=#ffc0a0 ctermfg=DarkCyan
 
" Syntax group
highlight Comment gui=none guifg=#888a85 guibg=bg
highlight Constant gui=bold guifg=#4a9a06 guibg=bg ctermfg=White
highlight Error gui=none guifg=#f8f8f8 guibg=#4040ff term=reverse ctermbg=Red ctermfg=White
highlight SpellBad term=underline gui=undercurl guisp=#ef2929
highlight Identifier gui=none guifg=#c17d11 guibg=bg ctermfg=Green
highlight Ignore gui=none guifg=bg guibg=bg ctermfg=black
highlight PreProc gui=none guifg=#683821 guibg=bg ctermfg=Green
highlight Special gui=none guifg=#204a87 guibg=bg ctermfg=DarkMagenta
highlight Statement gui=bold guifg=#ad7fa8 guibg=bg ctermfg=White
highlight Todo gui=bold guifg=#ef2929 guibg=white term=standout ctermbg=Yellow ctermfg=Black
highlight Type gui=bold guifg=#75507b guibg=bg ctermfg=LightGreen
highlight Underlined gui=none guifg=#3465a4 guibg=bg
highlight String gui=none guifg=#905898 guibg=bg ctermfg=Yellow
highlight Number gui=none guifg=#3465a4 guibg=bg ctermfg=white

if !has("gui_running")
    hi link Float Number
    hi link Conditional Repeat
    hi link Include PreProc
    hi link Macro PreProc
    hi link PreCondit PreProc
    hi link StorageClass Type
    hi link Structure Type
    hi link Typedef Type
    hi link Tag Special
    hi link Delimiter Normal
    hi link SpecialComment Special
    hi link Debug Special
endif
 
" vim:ff=unix:
