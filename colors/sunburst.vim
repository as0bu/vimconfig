" Vim color file
" Maintainer:    Roman Gonzalez <romanandnreg at gmail dot com>
" Last Change:   2009 Aug 11

" For now this will only work on gvim

highlight clear
if exists("syntax_on")
  syntax reset
endif
set background=dark

let g:colors_name = "sunburst"

" GUI
hi lineNr      guifg=#888888 ctermfg=102 guibg=#DEDEDE ctermbg=248 ctermfg=240 gui=NONE
hi VertSplit   guifg=#DEDEDE ctermfg=253 guibg=#888888 ctermbg=240 ctermfg=248 gui=NONE
hi IncSearch   guibg=#16181A ctermbg=234 gui=NONE
hi Cursor      guibg=#DDDDDD ctermbg=253 ctermbg=240 ctermbg=240 gui=NONE
hi Search      guibg=#16181A ctermbg=234 guifg=NONE
hi MatchParen  guibg=#16181A ctermbg=234 guifg=#CE864B gui=NONE
hi Folded      guibg=#16181A ctermbg=234 guifg=NONE
hi ErrorMsg    guibg=#FF0000 ctermbg=9 guifg=white

" General
hi Normal      guifg=White   guibg=Black ctermfg=255 ctermbg=black
hi PreProc     guifg=#CE864B ctermfg=173 guibg=Black ctermfg=136
hi Include     guifg=#CE864B ctermfg=173 guibg=Black ctermfg=136
hi Identifier  guifg=#3387CC ctermfg=68 guibg=Black ctermfg=33 
hi Keyword     guifg=#CE864B ctermfg=173 guibg=Black ctermfg=136
hi Define      guifg=#CE864B ctermfg=173 guibg=Black ctermfg=136
hi Statement   guifg=#CE864B ctermfg=173 guibg=Black ctermfg=136
hi Function    guifg=#89BDFF ctermfg=111 guibg=Black ctermfg=75
hi Comment     guifg=#AEAEAE ctermfg=145 guibg=Black gui=italic ctermfg=246
hi SpecialChar guifg=#DAD085 ctermfg=186 guibg=Black
hi Directory   guifg=#3387CC ctermfg=68 guibg=Black
hi Special     guifg=#E28964 ctermfg=173 guibg=Black
hi PreCondit   guifg=#9B859D ctermfg=246 guibg=Black
hi link Conditional Keyword
hi link Type Identifier
hi SpecialComment guifg=#AEAEAE ctermfg=145 guibg=Black gui=bold
hi Type       guifg=White gui=NONE
hi Constant   guifg=#3387CC ctermfg=68 guibg=Black ctermfg=33
hi String     guifg=#65B042 ctermfg=71 guibg=Black ctermfg=112
hi Title      guifg=#FFFFFF ctermfg=15 guibg=Black
hi Todo       guifg=#FFFFFF ctermfg=15 guibg=Black gui=underline
hi Structure  guifg=#CE864B ctermfg=173 guibg=Black
hi Delimiter  guifg=#FFFFFF ctermfg=15 guibg=Black
hi NonText    guifg=#AEAEAE ctermfg=145 guibg=Black gui=italic ctermfg=246
hi SpecialKey guifg=#AEAEAE ctermfg=145 guibg=Black gui=italic ctermfg=246

" NERDTree 
hi link treeClosable Special
hi treeExecFile guifg=#AB2A1D ctermfg=124 guibg=Black
hi treeOpenable guifg=#DAD085 ctermfg=186 guibg=Black
hi treeLink guifg=#FD5FF1 ctermfg=207 guibg=Black

" LaTeX 
hi link texInputFile PreCondit
hi texSectionMarker guifg=#DAD085 ctermfg=186 guibg=Black
hi texStatement guifg=#DAD085 ctermfg=186 guibg=Black
hi link texSectionName Identifier
hi link texInputFile Identifier
hi link texSpecialChar Identifier

" Haskell 
hi ConId guifg=#3387CC ctermfg=68 guibg=Black gui=NONE
hi hsOperator guifg=#E28964 ctermfg=173 guibg=Black
hi hsStructure guifg=#E28964 ctermfg=173 guibg=Black gui=bold
hi hsTypeDef guifg=#E28964 ctermfg=173 guibg=Black gui=bold
hi hsImport guifg=#E28964 ctermfg=173 guibg=Black gui=bold
hi link hsCharacter String
hi link hsType Identifier
hi link hsStatement hsOperator

" Ruby 
hi rubyKeyword guifg=#DAD085 ctermfg=186 guibg=Black
hi link rubyStringDelimiter String

" Rails 
hi link rubyRailsUserClass ConId
hi rubyRailsMethod guifg=#DAD085 ctermfg=186 guibg=Black
hi rubyRailsTestMethod guifg=#DAD085 ctermfg=186 guibg=Black

" HTML
hi htmlTagName guifg=#89BDFF ctermfg=111 guibg=Black gui=NONE
hi htmlArg guifg=#CDA869 ctermfg=179 guibg=Black gui=NONE
hi link htmlSpecialTagName htmlTagName
hi link htmlEndTag htmlTagName

" Javascript
hi javaScriptFunction guifg=#99CF50 ctermfg=113 guibg=Black gui=NONE
hi javaScriptBraces guifg=White guibg=Black gui=NONE
hi javaScriptConditional guifg=#E28964 ctermfg=173 guibg=Black gui=NONE
hi link javaScriptIdentifier javaScriptFunction

" Haml
hi hamlDocType guibg=Black guifg=White gui=NONE
hi link hamlTag htmlTagName
hi hamlId guifg=#AB2A1D ctermfg=124 guibg=Black
hi link hamlIdChar hamlId
hi hamlClassChar guifg=#DAD085 ctermfg=186 guibg=Black gui=NONE
hi hamlClass guifg=#DAD085 ctermfg=186 guibg=Black gui=NONE
hi hamlRubyOutputChar guifg=White guibg=Black gui=NONE

" VimShell
hi VimShellExe guifg=#FFFFFF ctermfg=15 guibg=Black gui=NONE
hi VimShellPrompt guifg=#99CF50 ctermfg=113 guibg=Black gui=NONE
hi VimShellUserPrompt guifg=#DAD085 ctermfg=186 guibg=Black gui=NONE
hi VimShellDirectory guifg=#89BDFF ctermfg=111 guibg=Black gui=NONE
hi VimShellDotFiles guifg=#89BDFF ctermfg=111 guibg=Black gui=NONE
hi VimShellLink guifg=#AB2A1D ctermfg=124  guibg=Black gui=NONE
hi VimShellError guifg=#AB2A1D ctermfg=124 guibg=Black gui=NONE


