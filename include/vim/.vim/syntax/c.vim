hi Normal       ctermfg=144
hi String       ctermfg=193
hi Label        ctermfg=68
hi cppFunction  ctermfg=208
hi cppClass     ctermfg=226
hi color_define ctermfg=135
hi def link cCustomFunc  cppFunction
" hi def link cStructure cppClass
hi def link cCustomClass cppClass
hi def link cCustomClassName cppClass
hi def link cCustomTemplateFunc  cppFunction
hi def link cppSTLfunction cppFunction
hi def link cppSTLios cppFunction
hi def link cppStorageClass cppFunction
hi def link cppMyTypeDef Typedef

syn match cStruct "[a-zA-Z_]\{-1,}_t\>"
hi def link cStruct cppClass
" syn match defFunction \"[a-zA-Z_]\{-1,}_f\>"
" hi def link defFunction cppFunction
" syn match cStruct \<[A-Z]\{1,}[a-z]\{1,}[a-zA-Z]\{0,}[^()*]\{0,1}"
" hi def link cStruct cppClass
syn match cDefineConst "\<[A-Z_0-9]\{1,}\>"
hi def link cDefineConst color_define
" syn keyword CPrintf printf puts
" hi def link CPrintf cppFunction  

syntax keyword cppMyTypedef int8 int16 int32 int64 uint8 uint16 uint32 uint64
