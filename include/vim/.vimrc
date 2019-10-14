" ==========================================
" Author:  zxn
" Version: 1.0
" Email: xuenanzhang@163.com
" ReadMe: README.md
" github: https://github.com/XuenanZhang
" Last_modify: 2018-3-21
" Sections:
"        -> Initial Plugin 加载插件
"        -> General Settings 基础设置
"        -> Display Settings 展示/排版等界面格式设置
"        -> FileEncode Settings 文件编码格式设置
"        -> FileType Settings  文件类型设置
"        -> Others 其它配置
"        -> HotKey Settings  自定义快捷键
"        -> Theme Settings  主题设置
" 
"        -> 插件配置和具体设置在vimrc.plugin中
" ==========================================
" :h digraph-table :hi
set nocompatible "非兼容vi模式,避免以前版本的一些bug和局限

" use before config {
    if filereadable(expand("~/.vimrc.before"))
        source ~/.vimrc.before
    endif
" }

"==========================================
" Initial Plugin 加载插件
"==========================================
" 修改leader键
let mapleader = ','
let g:mapleader = ','
syntax enable
syntax on

" Use plugin config {
    if filereadable(expand("~/.vimrc.plugin"))
        source ~/.vimrc.plugin
    endif
" }

"==========================================
" General Settings 基础设置
"==========================================
" history存储容量
set history=2000

" 检测文件类型
filetype on
" 针对不同的文件类型采用不同的缩进格式
filetype indent on
" 允许插件
filetype plugin on
" 启动自动补全
filetype plugin indent on

" 文件修改之后自动载入
set autoread
" 启动的时候不显示那个援助乌干达儿童的提示
set shortmess=atI

" 备份,到另一个位置. 防止误删, 目前是取消备份
"set backup
"set backupext=.bak
"set backupdir=/tmp/vimbk/

" 取消备份。 视情况自己改
set nobackup
" 关闭交换文件
"set noswapfile
set swapfile


" 突出显示当前列
"set cursorcolumn
" 突出显示当前行
set cursorline

" 设置 退出vim后，内容显示在终端屏幕, 可以用于查看和复制, 不需要可以去掉
" 好处：误删什么的，如果以前屏幕打开，可以找回
"set t_ti= t_te=

" 鼠标暂不启用, 键盘党....
"set mouse-=a
" 启用鼠标
set mouse=n
" Hide the mouse cursor while typing
"set mousehide


" 修复ctrl+m 多光标操作选择的bug，但是改变了ctrl+v进行字符选中时将包含光标下的字符
set selection=inclusive
set selectmode=mouse,key

" change the terminal's title
set title
" 去掉输入错误的提示声音
set novisualbell
set noerrorbells
set t_vb=
set tm=500

" Remember info about open buffers on close
set viminfo^=%

" For regular expressions turn magic on
set magic

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" 在切换buffer时自动保存当前文件
set autowrite

"语法高亮
syntax enable
syntax on

" 撤销
set undolevels=1000              "How many undos
set undoreload=10000             "number of lines to save for undo
if v:version >= 730
    set undofile                 "keep a persistent backup file
    set undodir=~/bak/vimundo/
endif

"==========================================
" Display Settings 展示/排版等界面格式设置
"==========================================

" 显示当前的行号列号
set ruler
" 在状态栏显示正在输入的命令
set showcmd
" 左下角显示当前vim模式
set showmode

" 在上下移动光标时，光标的上方或下方至少会保留显示的行数
set scrolloff=7

" set winwidth=79

" 命令行（在状态行下）的高度，默认为1，这里是2
set statusline=%<%f\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %-14.(%l,%c%V%)\ %P 
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   "状态行显示内容
" Always show the status line - use 2 lines for the status bar
set laststatus=2

" 显示行号
set number
" 取消换行
set wrap

" 括号配对情况, 跳转并高亮一下匹配的括号
set showmatch
" How many tenths of a second to blink when matching brackets
set matchtime=2


" 设置文内智能搜索提示
" 高亮search命中的文本
set hlsearch
" 打开增量搜索模式,随着键入即时搜索
set incsearch
" 搜索时忽略大小写
set ignorecase
" 有一个或以上大写字母时仍大小写敏感
set smartcase

" 代码折叠
set foldenable
" 折叠方法
" manual    手工折叠
" indent    使用缩进表示折叠
" expr      使用表达式定义折叠
" syntax    使用语法定义折叠
" diff      对没有更改的文本进行折叠
" marker    使用标记进行折叠, 默认标记是 {{{ 和 }}}
set foldmethod=marker
"set foldlevel=99
":setlocal foldmethod=marker
" 代码折叠自定义快捷键 <leader>zz
let g:FoldMethod = 1
map <leader>zz :call ToggleFold()<cr>
fun! ToggleFold()
    if g:FoldMethod == 0
        exe "normal! zM"
        let g:FoldMethod = 1
    else
        exe "normal! zR"
        let g:FoldMethod = 0
    endif
endfun

" 缩进配置
" Smart indent
set smartindent
" 打开自动缩进
" never add copyindent, case error   " copy the previous indentation on autoindenting
set autoindent

" tab相关变更
" 设置Tab键的宽度        [等同的空格个数]
set tabstop=4
" 每一次缩进对应的空格数
set shiftwidth=4
" 按退格键时可以一次删掉 4 个空格
set softtabstop=4
" insert tabs on the start of a line according to shiftwidth, not tabstop 按退格键时可以一次删掉 4 个空格
set smarttab
" 将Tab自动转化成空格[需要输入真正的Tab键时，使用 Ctrl+V + Tab]
set expandtab
" 缩进时，取整 use multiple of shiftwidth when indenting with '<' and '>'
set shiftround

" 整词换行
set linebreak

" 光标从行首和行末时可以跳到另一行去
set whichwrap=b,s,<,>,[,]

" 使用 C/C++ 语言的自动缩进方式
set cindent
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s "设置C/C++语言的具体缩进方式

" A buffer becomes hidden when it is abandoned
set hidden
set wildmode=list:longest
set ttyfast

" 00x增减数字时使用十进制
"set nrformats=

" 相对行号: 行号变成相对，可以用 nj/nk 进行跳转
"set relativenumber number
"au FocusLost * :set norelativenumber number
"au FocusGained * :set relativenumber
" 插入模式下用绝对行号, 普通模式下用相对
"autocmd InsertEnter * :set norelativenumber number
"autocmd InsertLeave * :set relativenumber
function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber number
  else
    set relativenumber
  endif
endfunc
nnoremap <leader>nu :call NumberToggle()<cr>

" 防止tmux下vim的背景色显示异常
" Refer: http://sunaku.github.io/vim-256color-bce.html
if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif

"==========================================
" FileEncode Settings 文件编码格式
"==========================================
" 设置新文件的编码为 UTF-8
set encoding=utf-8
" 自动判断编码时，依次尝试以下编码：
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set helplang=cn
set langmenu=zh_CN.UTF-8
" 下面这句只影响普通模式 (非图形界面) 下的 Vim
set termencoding=utf-8
 
" Use Unix as the standard file type
set ffs=unix,dos,mac

" 如遇Unicode值大于255的文本，不必等到空格再折行
set formatoptions+=m
" 合并两行中文时，不在中间加空格
set formatoptions+=B

"==========================================
" FileType Settings  文件类型设置
"==========================================

" 定义函数AutoSetFileHead，自动插入文件头 {{{
function! My_AutoSetFileHead()
    let name = toupper(expand("%<"))
    if &filetype == 'cpp'
        call setline(1, "\#ifndef __" . name . "_H__")
        call append(1, "\#define __" . name . "_H__")
        call append(2, "")
        call append(3, "")
        call append(4, "")
        call append(5, "")
        call append(6, "")
        call append(7, "\#endif")
        call cursor(4,1)
        return
    elseif &filetype == 'sh'
        call setline(1, "\#!/bin/bash")
        call append(1, "")
        call append(2, "")
        call cursor(3,1)
    elseif &filetype == 'python'
        call setline(1, "\#!/usr/bin/python3")
        call append(1, "\#coding: utf-8")
        call append(2, "")
        call append(3, "")
        call cursor(4,1)
    endif
endfunc
"}}}
autocmd BufNewFile *.sh,*.py,*.h exec ":call My_AutoSetFileHead()"

" 具体编辑文件类型的一般设置，比如不要 tab 等
" 定义文件读取函数My_AutoSetFileType {{{
function! My_AutoSetFileType()
    if &filetype == 'cpp'
        
    elseif &filetype == 'sh'

    elseif &filetype == 'python'

    endif
endfunc
" }}}
"autocmd FileType python set tabstop=4 shiftwidth=4 expandtab ai
"autocmd FileType ruby,javascript,html,css,xml set tabstop=2 shiftwidth=2 softtabstop=2 expandtab ai
"autocmd BufRead,BufNewFile *.md,*.mkd,*.markdown set filetype=markdown.mkd
"autocmd BufRead,BufNewFile *.part set filetype=html
"autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript tabstop=2 shiftwidth=2 softtabstop=2 expandtab ai
autocmd BufRead *.h,*.cpp,*.sh,*.py :call My_AutoSetFileType()

" disable showmatch when use > in php
"au BufWinEnter *.php set mps-=<:>



" 保存python文件时删除多余空格
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
"autocmd FileType c,cpp,java,go,php,javascript,puppet,python,rust,twig,xml,yml,perl autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()


" 设置可以高亮的关键字
if has("autocmd")
  " Highlight TODO, FIXME, NOTE, etc.
  if v:version > 701
    autocmd Syntax * call matchadd('Todo',  '\W\zs\(TODO\|FIXME\|CHANGED\|DONE\|XXX\|BUG\|HACK\)')
    autocmd Syntax * call matchadd('Debug', '\W\zs\(NOTE\|INFO\|IDEA\|NOTICE\)')
  endif
endif

" 添加作者信息 {{{
function AddAuthor()
    let n=1
    while n < 10
            let line = getline(n)
            if line =~'^\s*\*\s*\S*Last\s*modified\s*:\s*\S*.*'
                    call UpdateTitle()
                    return
            endif
            let n = n + 1
    endwhile
    call AddTitle()
endfunction

function AddTitle()
    call append(0,"/**********************************************************")
    call append(1," * Author        : zxn")
    call append(2," * Email         : 176108053@qq.com")
    call append(3," * GitHub        : https://github.com/XuenanZhang")
    call append(4,"")
    call append(5," * Create time   : ".strftime("%Y-%m-%d %H:%M"))
    call append(6," * Last modified : ".strftime("%Y-%m-%d %H:%M"))
    call append(7," * Filename      : ".expand("%:t"))
    call append(8,"")
    call append(9," * Description   : ")
    call append(10," * *******************************************************/")
    echohl WarningMsg | echo "Successful in adding the copyright." | echohl None
endfunction

function UpdateTitle()
    normal m'
    execute '/* Last modified\s*:/s@:.*$@\=strftime(": %Y-%m-%d %H:%M")@'
    normal "
    normal mk
    execute '/* Filename\s*:/s@:.*$@\=": ".expand("%:t")@'
    execute "noh"
    normal 'k
    echohl WarningMsg | echo "Successful in updating the copy right." | echohl None
endfunction
"}}}


nnoremap <F12> :call AddAuthor()<cr>
"==========================================
" others 其它设置
"==========================================
" vimrc文件修改之后自动加载, linux
"autocmd! bufwritepost .vimrc source %

" 自动补全配置
" 让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
set completeopt=longest,menu

" 增强模式中的命令行自动完成操作
set wildmenu
" Ignore compiled files
set wildignore=*.o,*.swp,*.bak,*.pyc,*.class,.svn,.git

" 离开插入模式后自动关闭预览窗口
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" 回车即选中当前项
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"


" 打开自动定位到最后编辑的位置, 需要确认 .viminfo 当前用户可写
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" 退出插入模式时自动保存
"autocmd InsertLeave * :w!<ESC>

" 粘贴之后保留原有内容
function! RestoreRegister()
	let @" = s:restore_reg
	return ''
endfunction
function! s:Repl()
	let s:restore_reg = @"
	return "p@=RestoreRegister()\<CR>"
endfunction
vmap <silent> <expr> p <sid>Repl()

"==========================================
" Theme Settings  主题设置
"==========================================

" Set extra options when running in GUI mode
if has("gui_running")
    set guifont=Monaco:h14
    if has("gui_gtk2")   "GTK2
        set guifont=Monaco\ 12,Monospace\ 12
    endif
    set guioptions-=T
    set guioptions+=e
    set guioptions-=r
    set guioptions-=L
    set guitablabel=%M\ %t
    set showtabline=1
    set linespace=2
    set noimd
    set t_Co=256
endif



" theme主题
set background=dark
set t_Co=256

" colorscheme solarized
colorscheme molokai
" colorscheme deser



" 设置标记一列的背景颜色和数字一行颜色一致
hi! link SignColumn   LineNr
hi! link ShowMarksHLl DiffAdd
hi! link ShowMarksHLu DiffChange

" for error highlight，防止错误整行标红导致看不清
highlight clear SpellBad
highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
highlight clear SpellCap
highlight SpellCap term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal term=underline cterm=underline

if My_PluginExist("vim-cpp-enhanced-highlight")
    " look -->  ~/.vim/syntax/*.vim
   
    " hi cppFunction  ctermfg=208
    " hi def link cCustomFunc  cppFunction
endif

"==========================================
" HotKey Settings  自定义快捷键 A=ALT C=Ctrl
"==========================================
" esc
inoremap kj <ESC>
"inoremap <esc> <nop>
" noremap <C-g> <ESC>
vnoremap <C-g> <ESC>
cnoremap <C-g> <ESC>
xnoremap <C-g> <ESC>
onoremap <C-g> <ESC>

" 移动操作
inoremap <A-j> <DOWN>
inoremap <A-k> <UP>
inoremap <A-h> <LEFT>
inoremap <A-l> <RIGHT>
cnoremap <A-j> <DOWN>
cnoremap <A-k> <UP>
cnoremap <A-h> <LEFT>
cnoremap <A-l> <RIGHT>
nnoremap < <<
nnoremap > >>

" 行首行位 
noremap H ^
noremap L $
inoremap <silent> <C-h> <ESC>^i
inoremap <silent> <C-l> <ESC>$a
cnoremap <C-h> <Home>
cnoremap <C-l> <End>

inoremap <C-k> <ESC><RIGHT>d$a
"inoremap <C-u> <ESC><RIGHT>d^i

"上下移动一行
noremap <A-D> ddp
noremap <A-U> ddkP

" 分屏窗口移动
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

nnoremap ; :
inoremap <A-.> ->

" 恢复撤销
nnoremap U <C-r>

" 全选
noremap <C-a> ggVG

" 保存
noremap <A-s> :w<cr>
inoremap <A-s> <ESC>:w<cr>

" 退出
noremap <A-q> :q<CR>
noremap QQ :q!<CR>

"两个文件键切换
noremap <A-a> <C-^>
inoremap <A-a> <ESC><C-^>

" 添加括号
inoremap <C-o> <END><CR>{<CR><CR>}<up><tab>

" 本文件内容全部替换
nmap <leader>h :%s/<C-R><C-W>//g<LEFT><LEFT>

nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz

"粘贴模式
nnoremap<Leader>sp :set paste<CR>
nnoremap<Leader>snp :set nopaste<CR>

"取消高亮 
noremap <silent> <A-H> :nohl<CR>

"清除windons回车\r
noremap <leader>rn :%s/\r//g<CR>

"改变编码集为utf-8
nnoremap <Leader><Leader>e :set encoding=utf-8 fileencoding=utf-8 fileencodings=utf-8<CR>



" QuickfixToggle fun {{{
    let g:my_quickfix_is_open = 0 
    function! QuickfixToggle()
        if g:my_quickfix_is_open
            cclose
            let g:my_quickfix_is_open = 0 
            execute g:quickfix_return_to_window . "wincmd w"
        else
            let g:quickfix_return_to_window = winnr()
            copen
            let g:my_quickfix_is_open = 1 
        endif
    endfunction
"}}}
" F1 打开quickfix窗口
noremap <silent> <F1> :call QuickfixToggle()<cr>

" F2 行号开关，用于鼠标复制代码用
nnoremap <silent> <F2> :set number!<CR>

" F3 插入模式
" set pastetoggle=<F3>
set pastetoggle=<a-c>
au InsertLeave * set nopaste

nnoremap <silent> <F3> <c-o>
noremap <F4> <leader>g

" F4 换行开关
" nnoremap <silent> <F4> :set wrap!<CR>

" noremap <F5> :make -j3<cr>
nnoremap <F5> :call CompileRun(1)<cr>
nnoremap <F10> :call CompileRun(2)<cr>
nnoremap <F6> :cp<cr>
nnoremap <F7> :cn<cr>
nnoremap <F8> :cc<cr>
func CompileRun(val)  
	if a:val == 1
		" exec 'w'  
	endif
    " echo &filetype
	if &filetype == 'c'  
        if a:val == 2
            silent !make clean
        endif
        silent !clear
        !make -j4
    elseif &filetype == 'cpp'  
        if a:val == 2
            silent !make clean
        endif
        silent !clear
        !make -j4
    elseif &filetype == 'sh'  
		silent !clear
		:!./%  
    elseif &filetype == 'python'  
		silent !clear
		!python3 % 
    elseif &filetype == 'make'  
        exec "!make -j4"
        " echom expand('%')
        " echom expand('%:p')
        " echo ' -I'.join(split(globpath('./lib', '**/*/'), '\n'),' -I')
        " echo '-I'.join(split(globpath('./server', '**/*/'), '\n'),' -I')
    endif  
endfunc  

" ctags初始化
" nnoremap <F11> :!ctags -R --kinds-c++=+p --fields=+iaS --extra=+q<CR>
" nnoremap <F11> :!ctags -R --c++-kinds=+px --fields=+iaS --extra=+q<CR>
function My_CtagsFunc()
    silent exec '!find ./ -name "*.h" -o -name "*.c" -o -name "*.cc" -o -name "*.cpp" > cscope.files'
    silent exec '!cscope -Rbkq -i cscope.files'
    silent exec '!ctags -R --languages=c++ --langmap=c++:+.inl -h +.inl --c++-kinds=+px --fields=+aiKSz --extra=+q'
    silent exec 'cs reset'
    " silent :!find ./ -name "*.h" -o -name "*.c" -o -name "*.cc" -o -name "*.cpp" > cscope.files
    " silent :!cscope -Rbkq -i cscope.files
    " silent :!ctags -R --languages=c++ --langmap=c++:+.inl -h +.inl --c++-kinds=+px --fields=+aiKSz --extra=+q
    " silent :cs reset
endfunction
nnoremap <F11> :call My_CtagsFunc()<CR>
" nnoremap <F11> :!ctags -R --languages=c++ --langmap=c++:+.inl -h +.inl --c++-kinds=+px --fields=+aiKSz --extra=+q


"""""""""""""""""""""""""""""""""""初始化函数""""""""""""""""""""""""""""""""""""""""
" Alt 初始化 {{{
function! My_Terminal_MetaMode(mode)
    if has('nvim') || has('gui_running')
        return
    endif
    function! s:metacode(mode, key)
        if a:mode == 0
            exec "set <M-".a:key.">=\e".a:key
        else
            exec "set <M-".a:key.">=\e]{0}".a:key."~"
        endif
    endfunc
    for i in range(10)
        call s:metacode(a:mode, nr2char(char2nr('0') + i))
    endfor
    for i in range(26)
        " 字母o会影响F123... 原因未明
        if i == 14 
            echom nr2char(char2nr('a') + i)
            continue
        endif
        call s:metacode(a:mode, nr2char(char2nr('a') + i))
        call s:metacode(a:mode, nr2char(char2nr('A') + i))
    endfor
    if a:mode != 0
        for c in [',', '.', '/', ';', '[', ']', '{', '}']
            call s:metacode(a:mode, c)
        endfor
        for c in ['?', ':', '-', '_']
            call s:metacode(a:mode, c)
        endfor
    else
        for c in [',', '.', '/', ';', '{', '}']
            call s:metacode(a:mode, c)
        endfor
        for c in ['?', ':', '-', '_']
            call s:metacode(a:mode, c)
        endfor
    endif
    if &ttimeout == 0
        set ttimeout
    endif
    if &ttimeoutlen <= 0
        set ttimeoutlen=100
    endif
endfunc
"}}}


"vim完成初始化
function My_InitFunc()
    echom "init"
    "exec "SyntasticToggleMode"
    call My_Terminal_MetaMode(0)
endfunction

":help autocmd-events 所有事件
autocmd VimEnter * :call My_InitFunc() 

