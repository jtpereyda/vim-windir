" Vim syntax file
" Language: Windows directory listing
" Maintainer: Joshua Pereyda

if exists("b:current_syntax")
  finish
endif

synt region dirLine start=/^\s*Directory of/ end=/$/ contains=dirStart,dirStartOf

syn keyword dirStart contained Directory nextgroup=dirStartOf skipwhite
syn keyword dirStartOf contained of nextgroup=toLastDir skipwhite

syn match toLastDir contained /\s*\([^\\]*\\\)*/ nextgroup=lastDir
syn match lastDir contained /[^\\]*/
syn match fileLineStart '^[0-9\/]\{5,}.*\s\{1,}[0-9,]\{1,}\s\{1,}' nextgroup=fileName
syn match fileName '.*$' contained
syn match desktopIni '.*[dD]esktop.ini\s*$'
syn match junctionLine '.*<JUNCTION>.*\[.*\]\s*$'
syn match symlinkLine '.*<SYMLINKD>.*\[.*\]\s*$'
syn match dirLineStart '^.*\s*<DIR>\s*' nextgroup=dirName
syn match dirName '.*$' contained
syn match dotDir '.*<DIR>.*\s\.\{1,2}\s*$'
syn match summaryLine '^\s*[0-9,]\{1,}\sFile\S*\s\{1,}[0-9,]\{1,}\s\{1,}bytes\s*$'


hi def link dirStart      Comment
hi def link dirStartOf    Comment
hi def link toLastDir         Comment
hi def link lastDir         Number
hi def link desktopIni    Comment
hi def link junctionLine    Comment
hi def link symlinkLine    Comment
hi def link dotDir        Comment
hi def link dirLineStart  Comment
hi def link dirName        String
hi def link fileName        Identifier
hi def link summaryLine   Comment
