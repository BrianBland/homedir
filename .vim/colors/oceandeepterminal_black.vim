" This scheme was created by CSApproxSnapshot
" on Sun, 18 Oct 2009

hi clear
if exists("syntax_on")
    syntax reset
endif

if v:version < 700
    let g:colors_name = expand("<sfile>:t:r")
    command! -nargs=+ CSAHi exe "hi" substitute(substitute(<q-args>, "undercurl", "underline", "g"), "guisp\\S\\+", "", "g")
else
    let g:colors_name = expand("<sfile>:t:r")
    command! -nargs=+ CSAHi exe "hi" <q-args>
endif

if 0
elseif has("gui_running") || &t_Co == 256
    CSAHi Normal term=NONE cterm=NONE ctermbg=NONE ctermfg=231 gui=NONE guibg=Black guifg=#ffffff
    CSAHi Underlined term=underline cterm=underline ctermbg=NONE ctermfg=102 gui=underline guibg=NONE guifg=honeydew4
    CSAHi Ignore term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=#204050
    CSAHi Error term=reverse cterm=NONE ctermbg=124 ctermfg=230 gui=NONE guibg=FireBrick guifg=LightYellow
    CSAHi Todo term=NONE cterm=NONE ctermbg=60 ctermfg=51 gui=NONE guibg=#507080 guifg=Cyan
    CSAHi String term=NONE cterm=NONE ctermbg=NONE ctermfg=45 gui=NONE guibg=NONE guifg=turquoise2
    CSAHi Number term=NONE cterm=NONE ctermbg=NONE ctermfg=51 gui=NONE guibg=NONE guifg=Cyan
    CSAHi Boolean term=NONE cterm=bold ctermbg=NONE ctermfg=51 gui=bold guibg=NONE guifg=Cyan
    CSAHi Function term=NONE cterm=NONE ctermbg=NONE ctermfg=114 gui=NONE guibg=NONE guifg=DarkSeaGreen3
    CSAHi Macro term=NONE cterm=NONE ctermbg=NONE ctermfg=110 gui=NONE guibg=NONE guifg=LightSkyBlue3
    CSAHi PreCondit term=NONE cterm=NONE ctermbg=NONE ctermfg=153 gui=NONE guibg=NONE guifg=LightSkyBlue2
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=NONE ctermfg=246 gui=NONE guibg=NONE guifg=#949494
    CSAHi NonText term=bold cterm=NONE ctermbg=NONE ctermfg=246 gui=NONE guibg=NONE guifg=#949494
    CSAHi Directory term=bold cterm=NONE ctermbg=NONE ctermfg=37 gui=NONE guibg=NONE guifg=LightSeaGreen
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=124 ctermfg=230 gui=NONE guibg=FireBrick guifg=LightYellow
    CSAHi IncSearch term=reverse cterm=NONE ctermbg=231 ctermfg=0 gui=reverse guibg=NONE guifg=fg
    CSAHi Search term=reverse cterm=NONE ctermbg=66 ctermfg=0 gui=NONE guibg=LightSkyBlue4 guifg=fg
    CSAHi MoreMsg term=bold cterm=bold ctermbg=NONE ctermfg=29 gui=bold guibg=NONE guifg=SeaGreen4
    CSAHi ModeMsg term=bold cterm=bold ctermbg=22 ctermfg=120 gui=bold guibg=DarkGreen guifg=LightGreen
    CSAHi LineNr term=underline cterm=bold ctermbg=233 ctermfg=110 gui=bold guibg=grey6 guifg=LightSkyBlue3
    CSAHi CursorIM term=NONE cterm=bold ctermbg=116 ctermfg=231 gui=bold guibg=PaleTurquoise3 guifg=white
    CSAHi Define term=NONE cterm=NONE ctermbg=NONE ctermfg=153 gui=NONE guibg=NONE guifg=LightSteelBlue2
    CSAHi Pmenu term=NONE cterm=bold ctermbg=66 ctermfg=194 gui=bold guibg=LightSkyBlue4 guifg=honeydew2
    CSAHi PmenuSel term=NONE cterm=bold ctermbg=22 ctermfg=194 gui=bold guibg=DarkGreen guifg=honeydew2
    CSAHi PmenuSbar term=NONE cterm=bold ctermbg=66 ctermfg=fg gui=bold guibg=LightSkyBlue4 guifg=fg
    CSAHi PmenuThumb term=NONE cterm=bold ctermbg=22 ctermfg=fg gui=bold guibg=DarkGreen guifg=fg
    CSAHi TabLine term=underline cterm=underline ctermbg=252 ctermfg=fg gui=underline guibg=LightGrey guifg=fg
    CSAHi TabLineSel term=bold cterm=bold ctermbg=NONE ctermfg=fg gui=bold guibg=NONE guifg=fg
    CSAHi TabLineFill term=reverse cterm=NONE ctermbg=231 ctermfg=NONE gui=reverse guibg=NONE guifg=fg
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=NONE ctermfg=fg gui=NONE guibg=#003853 guifg=fg
    CSAHi CursorLine term=underline cterm=NONE ctermbg=NONE ctermfg=fg gui=NONE guibg=#003853 guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=116 ctermfg=231 gui=NONE guibg=PaleTurquoise3 guifg=White
    CSAHi Conditional term=NONE cterm=NONE ctermbg=NONE ctermfg=120 gui=NONE guibg=NONE guifg=LightGreen
    CSAHi Repeat term=NONE cterm=NONE ctermbg=NONE ctermfg=84 gui=NONE guibg=NONE guifg=SeaGreen2
    CSAHi Operator term=NONE cterm=NONE ctermbg=NONE ctermfg=118 gui=NONE guibg=NONE guifg=Chartreuse
    CSAHi Keyword term=NONE cterm=bold ctermbg=NONE ctermfg=120 gui=bold guibg=NONE guifg=LightGreen
    CSAHi Exception term=NONE cterm=bold ctermbg=NONE ctermfg=120 gui=bold guibg=NONE guifg=LightGreen
    CSAHi Include term=NONE cterm=NONE ctermbg=NONE ctermfg=146 gui=NONE guibg=NONE guifg=LightSteelBlue3
    CSAHi Question term=NONE cterm=bold ctermbg=NONE ctermfg=84 gui=bold guibg=NONE guifg=SeaGreen2
    CSAHi StatusLine term=reverse,bold cterm=bold ctermbg=254 ctermfg=16 gui=bold guibg=grey88 guifg=black
    CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=246 ctermfg=234 gui=NONE guibg=grey60 guifg=grey10
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=246 ctermfg=16 gui=NONE guibg=grey60 guifg=black
    CSAHi Title term=bold cterm=bold ctermbg=NONE ctermfg=171 gui=bold guibg=NONE guifg=MediumOrchid1
    CSAHi Visual term=reverse cterm=NONE ctermbg=29 ctermfg=231 gui=reverse guibg=White guifg=SeaGreen
    CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=NONE ctermfg=231 gui=bold,underline guibg=NONE guifg=fg
    CSAHi WarningMsg term=NONE cterm=bold ctermbg=NONE ctermfg=203 gui=bold guibg=NONE guifg=FireBrick1
    CSAHi WildMenu term=NONE cterm=bold ctermbg=118 ctermfg=16 gui=bold guibg=Chartreuse guifg=Black
    CSAHi Folded term=NONE cterm=bold ctermbg=59 ctermfg=152 gui=bold guibg=#305060 guifg=#b0d0e0
    CSAHi helpLeadBlank term=NONE cterm=NONE ctermbg=NONE ctermfg=fg gui=NONE guibg=NONE guifg=fg
    CSAHi lCursor term=NONE cterm=NONE ctermbg=231 ctermfg=NONE gui=NONE guibg=fg guifg=bg
    CSAHi MatchParen term=reverse cterm=NONE ctermbg=51 ctermfg=fg gui=NONE guibg=Cyan guifg=fg
    CSAHi Comment term=bold cterm=NONE ctermbg=NONE ctermfg=32 gui=NONE guibg=NONE guifg=fg
    CSAHi Constant term=underline cterm=NONE ctermbg=NONE ctermfg=44 gui=NONE guibg=NONE guifg=cyan3
    CSAHi Special term=bold cterm=bold ctermbg=NONE ctermfg=79 gui=bold guibg=NONE guifg=aquamarine3
    CSAHi Identifier term=underline cterm=NONE ctermbg=NONE ctermfg=110 gui=NONE guibg=NONE guifg=LightSkyBlue3
    CSAHi Statement term=bold cterm=NONE ctermbg=NONE ctermfg=120 gui=NONE guibg=NONE guifg=LightGreen
    CSAHi PreProc term=underline cterm=NONE ctermbg=NONE ctermfg=117 gui=NONE guibg=NONE guifg=SkyBlue1
    CSAHi Type term=underline cterm=NONE ctermbg=NONE ctermfg=48 gui=NONE guibg=NONE guifg=#5fd7af
    CSAHi helpNormal term=NONE cterm=NONE ctermbg=NONE ctermfg=fg gui=NONE guibg=NONE guifg=fg
    CSAHi StorageClass term=NONE cterm=NONE ctermbg=NONE ctermfg=152 gui=NONE guibg=NONE guifg=LightBlue
    CSAHi Structure term=NONE cterm=NONE ctermbg=NONE ctermfg=152 gui=NONE guibg=NONE guifg=LightBlue
    CSAHi Typedef term=NONE cterm=NONE ctermbg=NONE ctermfg=152 gui=NONE guibg=NONE guifg=LightBlue
    CSAHi FoldColumn term=NONE cterm=bold ctermbg=59 ctermfg=152 gui=bold guibg=#305060 guifg=#b0d0e0
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=30 ctermfg=231 gui=NONE guibg=DarkCyan guifg=fg
    CSAHi DiffChange term=bold cterm=NONE ctermbg=28 ctermfg=231 gui=NONE guibg=Green4 guifg=fg
    CSAHi DiffDelete term=bold cterm=NONE ctermbg=16 ctermfg=231 gui=NONE guibg=black guifg=fg
    CSAHi DiffText term=reverse cterm=bold ctermbg=NONE ctermfg=231 gui=bold guibg=NONE guifg=fg
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=250 ctermfg=18 gui=NONE guibg=Grey guifg=DarkBlue
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=NONE ctermfg=196 gui=undercurl guibg=NONE guifg=fg guisp=Red
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=NONE ctermfg=226 gui=undercurl guibg=NONE guifg=fg guisp=Yellow
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=NONE ctermfg=214 gui=undercurl guibg=NONE guifg=fg guisp=Orange
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=NONE ctermfg=214 gui=undercurl guibg=NONE guifg=fg guisp=Orange
endif

if 1
    delcommand CSAHi
endif
