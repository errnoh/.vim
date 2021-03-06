set background=dark "or light
highlight clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name = "vivify"
set t_Co=256

    highlight Boolean             guifg=#dca3a3 ctermfg=181                           gui=none cterm=none
    highlight CTagsClass          guifg=#acd0b3 ctermfg=151                           gui=none cterm=none
    highlight CTagsGlobalConstant guifg=#dca3a3 ctermfg=181                           gui=none cterm=none
    highlight CTagsGlobalVariable guifg=#efdcbc ctermfg=222                           gui=none cterm=none
    highlight CTagsImport         guifg=#e3ceab ctermfg=222                           gui=none cterm=none
    highlight CTagsMember         guifg=#efef8f ctermfg=186                           gui=none cterm=none
    highlight Character           guifg=#dca3a3 ctermfg=181                           gui=none cterm=none
    highlight Comment             guifg=#7f9f7f ctermfg=108                           gui=italic cterm=italic
    highlight Conditional         guifg=#f0dfaf ctermfg=222                           gui=none cterm=none
    highlight Constant            guifg=#dca3a3 ctermfg=181                           gui=none cterm=none
    highlight Cursor              guifg=#000d18 ctermfg=25  guibg=#8faf9f ctermbg=72  gui=none cterm=none
    highlight CursorColumn        guifg=#eeeeee ctermfg=255 guibg=#121212 ctermbg=233 gui=none cterm=none
    highlight CursorLine          guifg=#eeeeee ctermfg=255 guibg=#121212 ctermbg=233 gui=none cterm=none
    highlight Debug               guifg=#bca3a3 ctermfg=138                           gui=none cterm=none
    highlight Define              guifg=#ffcfaf ctermfg=223                           gui=none cterm=none
    highlight DefinedName         guifg=#ffffff ctermfg=15  guibg=#333333 ctermbg=236 gui=none cterm=none
    highlight Delimiter           guifg=#8f8f8f ctermfg=245                           gui=none cterm=none
    highlight DiffAdd             guifg=#709080 ctermfg=72  guibg=#313c36 ctermbg=72  gui=none cterm=none
    highlight DiffChange          guifg=#d7d7d7 ctermfg=188 guibg=#333333 ctermbg=236 gui=none cterm=none
    highlight DiffDelete          guifg=#333333 ctermfg=236 guibg=#464646 ctermbg=238 gui=none cterm=none
    highlight DiffText            guifg=#8cd0d3 ctermfg=116 guibg=#41363c ctermbg=132 gui=none cterm=none
    highlight Directory           guifg=#9fafaf ctermfg=109                           gui=none cterm=none
    highlight EnumerationName     guifg=#efdcbc ctermfg=222                           gui=none cterm=none
    highlight EnumerationValue    guifg=#c0bed1 ctermfg=146                           gui=none cterm=none
    highlight Error               guifg=#ff8787 ctermfg=210 guibg=#5f0000 ctermbg=52  gui=none cterm=none
    highlight ErrorMsg            guifg=#80d4aa ctermfg=115 guibg=#2f2f2f ctermbg=236 gui=none cterm=none
    highlight Exception           guifg=#c3bf9f ctermfg=187                           gui=none cterm=none
    highlight Float               guifg=#c0bed1 ctermfg=146                           gui=none cterm=none
    highlight FoldColumn          guifg=#93b3a3 ctermfg=72  guibg=#3f4040 ctermbg=66  gui=none cterm=none
    highlight Folded              guifg=#93b3a3 ctermfg=72  guibg=#3f4040 ctermbg=66  gui=none cterm=none
    highlight Function            guifg=#efef8f ctermfg=186                           gui=none cterm=none
    highlight Identifier          guifg=#efdcbc ctermfg=222                           gui=none cterm=none
    highlight Ignore              guifg=#444444 ctermfg=238                           gui=none cterm=none
    highlight IncSearch           guifg=#385f38 ctermfg=65  guibg=#f8f893 ctermbg=228 gui=none cterm=none
    highlight Include             guifg=#ffcfaf ctermfg=223                           gui=none cterm=none
    highlight Keyword             guifg=#f0dfaf ctermfg=222                           gui=none cterm=none
    highlight Label               guifg=#dfcfaf ctermfg=222                           gui=underline cterm=underline
    highlight LineNr              guifg=#a8a8a8 ctermfg=248 guibg=#121212 ctermbg=233 gui=none cterm=none
    highlight LocalVariable       guifg=#ffffff ctermfg=15  guibg=#333333 ctermbg=236 gui=none cterm=none
    highlight Macro               guifg=#ffcfaf ctermfg=223                           gui=none cterm=none
    highlight MatchParen          guifg=#f0f0c0 ctermfg=230 guibg=#383838 ctermbg=237 gui=none cterm=none
    highlight ModeMsg             guifg=#ffcfaf ctermfg=223                           gui=none cterm=none
    highlight MoreMsg             guifg=#ffffff ctermfg=15                            gui=none cterm=none
    highlight NonText             guifg=#444444 ctermfg=238                           gui=none cterm=none
    highlight Normal              guifg=#d7d7d7 ctermfg=188 guibg=#1c1c1c ctermbg=234 gui=none cterm=none
    highlight Number              guifg=#8cd0d3 ctermfg=116                           gui=none cterm=none
    highlight Operator            guifg=#f0efd0 ctermfg=230                           gui=none cterm=none
    highlight PMenu               guifg=#a8a8a8 ctermfg=248 guibg=#000000 ctermbg=0   gui=none cterm=none
    highlight PMenuSbar           guifg=#000000 ctermfg=0   guibg=#2e3330 ctermbg=72  gui=none cterm=none
    highlight PMenuSel            guifg=#ffd7af ctermfg=223 guibg=#262626 ctermbg=235 gui=none cterm=none
    highlight PMenuThumb          guifg=#040404 ctermfg=0   guibg=#a0afa0 ctermbg=108 gui=none cterm=none
    highlight PreCondit           guifg=#dfaf8f ctermfg=180                           gui=none cterm=none
    highlight PreProc             guifg=#ffcfaf ctermfg=223                           gui=none cterm=none
    highlight Question            guifg=#ffffff ctermfg=15                            gui=none cterm=none
    highlight Repeat              guifg=#ffd7a7 ctermfg=223                           gui=none cterm=none
    highlight Search              guifg=#ffffe0 ctermfg=230 guibg=#284f28 ctermbg=71  gui=none cterm=none
    highlight SignColumn          guifg=#9fafaf ctermfg=109 guibg=#181818 ctermbg=234 gui=none cterm=none
    highlight Special             guifg=#cfbfaf ctermfg=180                           gui=none cterm=none
    highlight SpecialChar         guifg=#dca3a3 ctermfg=181                           gui=none cterm=none
    highlight SpecialComment      guifg=#82a282 ctermfg=108                           gui=none cterm=none
    highlight SpecialKey          guifg=#9ece9e ctermfg=151                           gui=none cterm=none
    highlight SpellBad            guifg=#dc8c6c ctermfg=173                           gui=none cterm=none
    highlight SpellCap            guifg=#8c8cbc ctermfg=103                           gui=none cterm=none
    highlight SpellLocal          guifg=#9ccc9c ctermfg=151                           gui=none cterm=none
    highlight SpellRare           guifg=#bc8cbc ctermfg=139                           gui=none cterm=none
    highlight Statement           guifg=#e3ceab ctermfg=222                           gui=none cterm=none
    highlight StatusLine          guifg=#313633 ctermfg=72  guibg=#ccdc90 ctermbg=236 gui=none cterm=none
    highlight StatusLineNC        guifg=#2e3330 ctermfg=72  guibg=#88b090 ctermbg=234 gui=none cterm=none
    highlight StorageClass        guifg=#c3bf9f ctermfg=187                           gui=none cterm=none
    highlight String              guifg=#cc9393 ctermfg=174                           gui=none cterm=none
    highlight Structure           guifg=#ffffff ctermfg=15  guibg=#333333 ctermbg=236 gui=none cterm=none
    highlight TabLine             guifg=#b6bf98 ctermfg=144 guibg=#181818 ctermbg=234 gui=none cterm=none
    highlight TabLineFill         guifg=#cfcfaf ctermfg=187 guibg=#181818 ctermbg=234 gui=none cterm=none
    highlight TabLineSel          guifg=#efefef ctermfg=255 guibg=#1c1c1b ctermbg=101 gui=none cterm=none
    highlight Tag                 guifg=#e89393 ctermfg=174                           gui=none cterm=none
    highlight Title               guifg=#efefef ctermfg=255                           gui=none cterm=none
    highlight Todo                guifg=#dfdfdf ctermfg=254 guibg=#a3a5a7 ctermbg=67  gui=none cterm=none
    highlight Type                guifg=#dfdfbf ctermfg=187                           gui=none cterm=none
    highlight Typedef             guifg=#dfe4cf ctermfg=187                           gui=none cterm=none
    highlight Underlined          guifg=#dcdccc ctermfg=187                           gui=underline cterm=underline
    highlight Union               guifg=#ffffff ctermfg=15  guibg=#333333 ctermbg=236 gui=none cterm=none
    highlight VertSplit           guifg=#2e3330 ctermfg=72  guibg=#688060 ctermbg=65  gui=none cterm=none
    highlight Visual              guifg=#000000 ctermfg=0   guibg=#71d3b4 ctermbg=79  gui=none cterm=none
    highlight VisualNOS           guifg=#333333 ctermfg=236 guibg=#f18c96 ctermbg=204 gui=underline cterm=underline
    highlight WarningMsg          guifg=#ffffff ctermfg=15  guibg=#333333 ctermbg=236 gui=none cterm=none
    highlight WildMenu            guifg=#cbecd0 ctermfg=194 guibg=#2c302d ctermbg=65  gui=underline cterm=underline
    highlight pythonBuiltin       guifg=#d7d7d7 ctermfg=188                           gui=none cterm=none
