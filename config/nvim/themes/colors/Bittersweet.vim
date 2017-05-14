" Vim color file
" Converted from Textmate theme Dracula using Coloration v0.4.0 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name =  expand('<sfile>:t:r')

hi Cursor ctermfg=17 ctermbg=231 cterm=NONE guifg=#222b30 guibg=#f8f8f0 gui=NONE
hi Visual ctermfg=NONE ctermbg=66 cterm=NONE guifg=NONE guibg=#4b7b91 gui=NONE
hi CursorLine ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#333c40 gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#333c40 gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#333c40 gui=NONE
hi LineNr ctermfg=102 ctermbg=59 cterm=NONE guifg=#767e81 guibg=#333c40 gui=NONE
hi VertSplit ctermfg=59 ctermbg=59 cterm=NONE guifg=#535b5f guibg=#535b5f gui=NONE
hi MatchParen ctermfg=212 ctermbg=NONE cterm=underline guifg=#ee88cc guibg=NONE gui=underline
hi StatusLine ctermfg=188 ctermbg=59 cterm=bold guifg=#cbd1d2 guibg=#535b5f gui=bold
hi StatusLineNC ctermfg=188 ctermbg=59 cterm=NONE guifg=#cbd1d2 guibg=#535b5f gui=NONE
hi Pmenu ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=66 cterm=NONE guifg=NONE guibg=#4b7b91 gui=NONE
hi IncSearch ctermfg=17 ctermbg=149 cterm=NONE guifg=#222b30 guibg=#9ed670 gui=NONE
hi Search ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi Directory ctermfg=139 ctermbg=NONE cterm=NONE guifg=#a475bd guibg=NONE gui=NONE
hi Folded ctermfg=67 ctermbg=17 cterm=NONE guifg=#4b92a7 guibg=#222b30 gui=NONE

hi Normal ctermfg=188 ctermbg=17 cterm=NONE guifg=#cbd1d2 guibg=#222b30 gui=NONE
hi Boolean ctermfg=139 ctermbg=NONE cterm=NONE guifg=#a475bd guibg=NONE gui=NONE
hi Character ctermfg=139 ctermbg=NONE cterm=NONE guifg=#a475bd guibg=NONE gui=NONE
hi Comment ctermfg=67 ctermbg=NONE cterm=NONE guifg=#4b92a7 guibg=NONE gui=NONE
hi Conditional ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ee88cc guibg=NONE gui=NONE
hi Constant ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Define ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ee88cc guibg=NONE gui=NONE
hi DiffAdd ctermfg=188 ctermbg=64 cterm=bold guifg=#cbd1d2 guibg=#45840e gui=bold
hi DiffDelete ctermfg=88 ctermbg=NONE cterm=NONE guifg=#8a090a guibg=NONE gui=NONE
hi DiffChange ctermfg=188 ctermbg=23 cterm=NONE guifg=#cbd1d2 guibg=#213b5c gui=NONE
hi DiffText ctermfg=188 ctermbg=24 cterm=bold guifg=#cbd1d2 guibg=#204a87 gui=bold
hi ErrorMsg ctermfg=231 ctermbg=212 cterm=NONE guifg=#f8f8f0 guibg=#ee88cc gui=NONE
hi WarningMsg ctermfg=231 ctermbg=212 cterm=NONE guifg=#f8f8f0 guibg=#ee88cc gui=NONE
hi Float ctermfg=139 ctermbg=NONE cterm=NONE guifg=#a475bd guibg=NONE gui=NONE
hi Function ctermfg=81 ctermbg=NONE cterm=bold guifg=#63c9ec guibg=NONE gui=bold
hi Identifier ctermfg=42 ctermbg=NONE cterm=NONE guifg=#07cc95 guibg=NONE gui=italic
hi Keyword ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ee88cc guibg=NONE gui=NONE
hi Label ctermfg=149 ctermbg=NONE cterm=NONE guifg=#9ed670 guibg=NONE gui=NONE
hi NonText ctermfg=59 ctermbg=23 cterm=NONE guifg=#3b3a32 guibg=#2a3338 gui=NONE
hi Number ctermfg=139 ctermbg=NONE cterm=NONE guifg=#a475bd guibg=NONE gui=NONE
hi Operator ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ee88cc guibg=NONE gui=NONE
hi PreProc ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ee88cc guibg=NONE gui=NONE
hi Special ctermfg=188 ctermbg=NONE cterm=NONE guifg=#cbd1d2 guibg=NONE gui=NONE
hi SpecialKey ctermfg=59 ctermbg=59 cterm=NONE guifg=#3b3a32 guibg=#333c40 gui=NONE
hi Statement ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ee88cc guibg=NONE gui=NONE
hi StorageClass ctermfg=42 ctermbg=NONE cterm=NONE guifg=#07cc95 guibg=NONE gui=italic
hi String ctermfg=149 ctermbg=NONE cterm=NONE guifg=#9ed670 guibg=NONE gui=NONE
hi Tag ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ee88cc guibg=NONE gui=NONE
hi Title ctermfg=188 ctermbg=NONE cterm=bold guifg=#cbd1d2 guibg=NONE gui=bold
hi Todo ctermfg=67 ctermbg=NONE cterm=inverse,bold guifg=#4b92a7 guibg=NONE gui=inverse,bold
hi Type ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi rubyClass ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ee88cc guibg=NONE gui=NONE
hi rubyFunction ctermfg=81 ctermbg=NONE cterm=bold guifg=#63c9ec guibg=NONE gui=bold
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=139 ctermbg=NONE cterm=NONE guifg=#a475bd guibg=NONE gui=NONE
hi rubyConstant ctermfg=110 ctermbg=NONE cterm=bold guifg=#8abbe7 guibg=NONE gui=bold,italic
hi rubyStringDelimiter ctermfg=149 ctermbg=NONE cterm=NONE guifg=#9ed670 guibg=NONE gui=NONE
hi rubyBlockParameter ctermfg=210 ctermbg=NONE cterm=NONE guifg=#f48d8d guibg=NONE gui=italic
hi rubyInstanceVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyInclude ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ee88cc guibg=NONE gui=NONE
hi rubyGlobalVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyRegexp ctermfg=149 ctermbg=NONE cterm=NONE guifg=#9ed670 guibg=NONE gui=NONE
hi rubyRegexpDelimiter ctermfg=149 ctermbg=NONE cterm=NONE guifg=#9ed670 guibg=NONE gui=NONE
hi rubyEscape ctermfg=139 ctermbg=NONE cterm=NONE guifg=#a475bd guibg=NONE gui=NONE
hi rubyControl ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ee88cc guibg=NONE gui=NONE
hi rubyClassVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyOperator ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ee88cc guibg=NONE gui=NONE
hi rubyException ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ee88cc guibg=NONE gui=NONE
hi rubyPseudoVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyRailsUserClass ctermfg=110 ctermbg=NONE cterm=bold guifg=#8abbe7 guibg=NONE gui=bold,italic
hi rubyRailsARAssociationMethod ctermfg=42 ctermbg=NONE cterm=NONE guifg=#07cc95 guibg=NONE gui=NONE
hi rubyRailsARMethod ctermfg=42 ctermbg=NONE cterm=NONE guifg=#07cc95 guibg=NONE gui=NONE
hi rubyRailsRenderMethod ctermfg=42 ctermbg=NONE cterm=NONE guifg=#07cc95 guibg=NONE gui=NONE
hi rubyRailsMethod ctermfg=42 ctermbg=NONE cterm=NONE guifg=#07cc95 guibg=NONE gui=NONE
hi erubyDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi erubyComment ctermfg=67 ctermbg=NONE cterm=NONE guifg=#4b92a7 guibg=NONE gui=NONE
hi erubyRailsMethod ctermfg=42 ctermbg=NONE cterm=NONE guifg=#07cc95 guibg=NONE gui=NONE
hi htmlTag ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ee88cc guibg=NONE gui=NONE
hi htmlEndTag ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ee88cc guibg=NONE gui=NONE
hi htmlTagName ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ee88cc guibg=NONE gui=NONE
hi htmlArg ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ee88cc guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=139 ctermbg=NONE cterm=NONE guifg=#a475bd guibg=NONE gui=NONE
hi javaScriptFunction ctermfg=42 ctermbg=NONE cterm=NONE guifg=#07cc95 guibg=NONE gui=italic
hi javaScriptRailsFunction ctermfg=42 ctermbg=NONE cterm=NONE guifg=#07cc95 guibg=NONE gui=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlKey ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ee88cc guibg=NONE gui=NONE
hi yamlAnchor ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlAlias ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlDocumentHeader ctermfg=149 ctermbg=NONE cterm=NONE guifg=#9ed670 guibg=NONE gui=NONE
hi cssURL ctermfg=210 ctermbg=NONE cterm=NONE guifg=#f48d8d guibg=NONE gui=italic
hi cssFunctionName ctermfg=42 ctermbg=NONE cterm=NONE guifg=#07cc95 guibg=NONE gui=NONE
hi cssColor ctermfg=139 ctermbg=NONE cterm=NONE guifg=#a475bd guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=84 ctermbg=NONE cterm=NONE guifg=#50fa7b guibg=NONE gui=NONE
hi cssClassName ctermfg=84 ctermbg=NONE cterm=NONE guifg=#50fa7b guibg=NONE gui=NONE
hi cssValueLength ctermfg=139 ctermbg=NONE cterm=NONE guifg=#a475bd guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=74 ctermbg=NONE cterm=NONE guifg=#6bc3d4 guibg=NONE gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
