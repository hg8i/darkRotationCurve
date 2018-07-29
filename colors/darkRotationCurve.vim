" Aaron White 2018
" Based on https://github.com/sts10/vim-pink-moon

" ========================================================================
" COLOR CHOICES
" Ideally, just change these to change the scheme
" ========================================================================
let s:black         = '238'
let s:green         = '106'
let s:olive         = '3'
let s:purple        = '5'
let s:grey          = '244'
let s:red           = '1'
let s:lime          = '10'
let s:yellow        = '11'
let s:blue          = '6'
let s:aqua          = '39'
let s:orange        = '172'
let s:darkyellow    = '172'
let s:darkred       = '88'
let s:cColumnGrey   = '18'
let s:cColumnGreyBg = '236'
let s:lightgrey     = '253'
let s:lightblue     = '81'

" ========================================================================
" SET UP FOR COLORSCHEME
" ========================================================================
hi clear
set background=dark

" HIGHLIGHTING FUNCTION
fun <sid>highlight(group, ctermfg, ctermbg)
	if a:ctermfg != ""
    exec "hi " . a:group . " ctermfg=" . a:ctermfg
	endif
	if a:ctermbg != ""
    exec "hi " . a:group . " ctermbg=" . a:ctermbg
	endif
endfun

" ========================================================================
" VISUAL SELECTION 
" ========================================================================
highlight Visual cterm=reverse ctermbg=NONE
set cursorline
hi CursorLine cterm=NONE guibg=Grey40

" ========================================================================
" GENERAL
" ========================================================================
let s:cTypedef         = '1'
let s:cType            = s:aqua " double
let s:cTodo            = s:yellow
let s:cTag             = '1'
let s:cStructure       = s:orange " namespace
let s:cString          = s:green
let s:cStorageclass    = '1'
let s:cStatement       = s:orange " def
let s:cSpecialchar     = '1'
let s:cSpecial         = s:grey " something in vim
let s:cRepeat          = '1'
let s:cPreproc         = '1'
let s:cOperator        = s:grey " = in vim
let s:cLabel           = '1'
let s:cKeyword         = '1'
let s:cInclude         = s:orange "include
let s:cIdentifier      = s:lightblue " vim labels
let s:cFunction        = s:blue " abs, len, reduce
let s:cNumber          = s:darkred
let s:cFloat           = s:darkred
let s:cDelimiter       = s:grey " () in vim
let s:cDefine          = '1'
let s:cConstant        = s:aqua " true,
let s:cConditional     = s:orange
let s:cComment         = s:grey
let s:cCharacter       = s:green
let s:cSearch          = s:black
let s:cSearchBg        = s:purple
let s:cLineNumber      = s:grey
let s:cCurLineNumber   = s:lightgrey
"
call <sid>highlight("Search",       s:cSearch      , s:cSearchBg)
call <sid>highlight("Character",    s:cCharacter   , "")
call <sid>highlight("Comment",      s:cComment     , "")
call <sid>highlight("Conditional",  s:cConditional , "")
call <sid>highlight("Constant",     s:cConstant    , "")
call <sid>highlight("Define",       s:cDefine      , "")
call <sid>highlight("Delimiter",    s:cDelimiter   , "")
call <sid>highlight("Float",        s:cFloat       , "")
call <sid>highlight("Function",     s:cFunction    , "")
call <sid>highlight("Identifier",   s:cIdentifier  , "")
call <sid>highlight("Include",      s:cInclude     , "")
call <sid>highlight("Keyword",      s:cKeyword     , "")
call <sid>highlight("Label",        s:cLabel       , "")
call <sid>highlight("Number",       s:cNumber      , "")
call <sid>highlight("Operator",     s:cOperator    , "")
call <sid>highlight("PreProc",      s:cPreproc     , "")
call <sid>highlight("Repeat",       s:cRepeat      , "")
call <sid>highlight("Special",      s:cSpecial     , "")
call <sid>highlight("SpecialChar",  s:cSpecialchar , "")
call <sid>highlight("Statement",    s:cStatement   , "")
call <sid>highlight("StorageClass", s:cStorageclass, "")
call <sid>highlight("String",       s:cString      , "")
call <sid>highlight("Structure",    s:cStructure   , "")
call <sid>highlight("Tag",          s:cTag         , "")
call <sid>highlight("Todo",         s:cTodo        , "")
call <sid>highlight("Type",         s:cType        , "")
call <sid>highlight("Typedef",      s:cTypedef     , "")
" cursor
call <sid>highlight("CursorColumn", ""   , s:cColumnGreyBg)
call <sid>highlight("CursorLine",   ""   , s:cColumnGreyBg)
call <sid>highlight("CursorLineNr",   s:cCurLineNumber   , s:cColumnGreyBg)
call <sid>highlight("LineNr", s:cLineNumber   , s:cColumnGreyBg)
"statusline
call <sid>highlight("StatusLine",s:cColumnGreyBg, s:cLineNumber )
" autocomplete
call <sid>highlight("Pmenu",s:cColumnGreyBg, s:cLineNumber )
call <sid>highlight("PmenuSel",s:cColumnGreyBg, s:lightgrey )
" ========================================================================

" ========================================================================
" PYTHON SPECIFIC
" ========================================================================
let s:cPythonBool      = s:lightblue
let s:cPythonOperator  = s:orange
let s:cPythonFunction  = s:lightblue
"
syn keyword PythonOppExt as
call <sid>highlight("PythonOppExt",   s:cPythonOperator,   "")
syn keyword PythonBool False True None Self
call <sid>highlight("PythonBool",   s:cPythonBool,         "")
call <sid>highlight("pythonFunction",   s:cPythonFunction, "")
call <sid>highlight("pythonOperator",   s:cPythonOperator, "") " not, in
call <sid>highlight("pythonRepeat",     s:cPythonOperator, "") " for
" ========================================================================

" ========================================================================
" CPP SPECIFIC
" ========================================================================
let s:cCppNew          = s:yellow
let s:cCppUsing        = s:yellow
"
syn keyword CppNew new
call <sid>highlight("CppNew",   s:cCppNew,    "")
syn keyword CppUsing using
call <sid>highlight("CppUsing",   s:cCppUsing,"")
" ========================================================================

" remove highlight function
delf <sid>highlight

" remove variables
unlet s:black s:green s:olive s:purple s:grey s:red s:lime s:yellow s:blue s:aqua s:orange s:darkyellow s:darkred s:cColumnGrey s:cColumnGreyBg s:cTypedef s:cType s:cTodo s:cTag s:cStructure s:cString s:cStorageclass s:cStatement s:cSpecialchar s:cSpecial s:cRepeat s:cPreproc s:cOperator s:cNumber s:cLabel s:cKeyword s:cInclude s:cIdentifier s:cFunction s:cFloat s:cDelimiter s:cDefine s:cConstant s:cConditional s:cComment s:cCharacter s:cSearch s:cSearchBg s:cPythonBool s:cPythonOperator s:cPythonFunction s:cCppNew s:cCppUsing
