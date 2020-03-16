" set encoding
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936,latin1
set termencoding=utf-8
set encoding=utf-8

" powerline setting
let g:powerline_pycmd="py3"
set laststatus=2
set rtp+=/usr/lib/python3.8/site-packages/powerline/bindings/vim

" <Leader>
let mapleader="\""

" set line number
set nu
set number

" highlight the current line
" set cursorline
" set cul

" highlight the current column
" set cursorcolumn
" set cuc

" set cursor position
set ruler

" check file type
filetype plugin indent on

filetype indent on

" get the .vimrc effect now
autocmd BufWritePost $MYVIMRC source $MYVIMRC
" show parens
set showmatch

" set tab=4
set tabstop=4

" set auto indent
set shiftwidth=4

" orient the forward line's indent
set autoindent

" set mouse right click to paste
" set paste
set mouse=a

" show tab and space
set listchars=tab:>-,trail:-

" search highlight
set hlsearch

" search ignore case
set ignorecase
set smartcase



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" vundle setting
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/phd'
" Plugin 'Lokaltog/vim-powerline'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'kshenoy/vim-signature'
Plugin 'vim-scripts/BOOKMARKS--Mark-and-Highlight-Full-Lines'
Plugin 'vim-scripts/indexer.tar.gz'
Plugin 'vim-scripts/DfrankUtil'
Plugin 'vim-scripts/vimprj'
Plugin 'dyng/ctrlsf.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'vim-scripts/DrawIt'
Plugin 'SirVer/ultisnips'
Plugin 'Valloric/YouCompleteMe'
Plugin 'derekwyatt/vim-protodef'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'gcmt/wildfire.vim'
Plugin 'suan/vim-instant-markdown'
" Plugin 'vim-airline/vim-airline'
" Plugin 'lilydjwg/fcitx.vim'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'jiangmiao/auto-pairs'

""""""""""""""""""""""""""""""
" language
""""""""""""""""""""""""""""""
Plugin 'rust-lang/rust.vim'
Plugin 'reasonml-editor/vim-reason-plus'
Plugin 'derekwyatt/vim-scala'
Plugin 'udalov/kotlin-vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'jez/vim-better-sml'
Plugin 'javier-lopez/sml.vim'
"Plugin 'Shougo/vimproc.vim'
"Plugin 'eagletmt/ghcmod-vim'
"Plugin 'neovimhaskell/haskell-vim'
"Plugin 'itchyny/vim-haskell-indent'
"Plugin 'alx741/vim-stylihask'
"Plugin 'alx741/vim-hindent'
"Plugin 'parsonsmatt/intero-neovim'
Plugin 'tpope/vim-fireplace'


"------------------
" Code Completions
"------------------
"Plugin 'Shougo/neocomplcache'
Plugin 'mattn/emmet-vim'
Plugin 'Raimondi/delimitMate'
Plugin 'ervandew/supertab'
" snippets
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
"------ snipmate dependencies -------
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'

"-----------------
" Fast navigation
"-----------------
Plugin 'Lokaltog/vim-easymotion'

"--------------
" Fast editing
"--------------
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'sjl/gundo.vim'
Plugin 'godlygeek/tabular'
Plugin 'nathanaelkane/vim-indent-guides'

"--------------
" IDE features
"--------------
Plugin 'scrooloose/nerdtree'
Plugin 'humiaozuzu/TabBar'
Plugin 'majutsushi/tagbar'
Plugin 'mileszs/ack.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'bronson/vim-trailing-whitespace'

"-------------
" Other Utils
"-------------
" Plugin 'humiaozuzu/fcitx-status'
Plugin 'nvie/vim-togglemouse'

"----------------------------------------
" Syntax/Indent for language enhancement
"----------------------------------------
"------- web backend ---------
Plugin '2072/PHP-Indenting-for-VIm'
"Plugin 'tpope/vim-rails'
Plugin 'lepture/vim-jinja'
"Plugin 'digitaltoad/vim-jade'

"------- web frontend ----------
Plugin 'othree/html5.vim'
" Plugin 'tpope/vim-haml'
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'nono/jquery.vim'
" Plugin 'groenewege/vim-less'
" Plugin 'wavded/vim-stylus'
" Plugin 'nono/vim-handlebars'

"------- markup language -------
Plugin 'tpope/vim-markdown'
" Plugin 'timcharper/textile.vim'

"------- Ruby --------
" Plugin 'tpope/vim-endwise'

"------- Go ----------
Plugin 'fatih/vim-go'

"------- FPs ------
Plugin 'kien/rainbow_parentheses.vim'
" Plugin 'wlangstroth/vim-racket'
" Plugin 'vim-scripts/VimClojure'
" Plugin 'rosstimson/scala-vim-support'

"--------------
" Color Schemes
"--------------
"Plugin 'rickharris/vim-blackboard'
"Plugin 'altercation/vim-colors-solarized'
"Plugin 'rickharris/vim-monokai'
"Plugin 'tpope/vim-vividchalk'
"Plugin 'Lokaltog/vim-distinguished'
"Plugin 'chriskempson/vim-tomorrow-theme'
"Plugin 'fisadev/fisa-vim-colorscheme'


call vundle#end()
filetype plugin indent on


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" editor settings
set history=1000
set nocompatible
set nofoldenable                                                  " disable folding"
set confirm                                                       " prompt when existing from an unsaved file
set backspace=indent,eol,start                                    " More powerful backspacing
set t_Co=256                                                      " Explicitly tell vim that the terminal has 256 colors "
set mouse=a                                                       " use mouse in all modes
set report=0                                                      " always report number of lines changed                "
set nowrap                                                        " dont wrap lines
set scrolloff=5                                                   " 5 lines above/below cursor when scrolling
set number                                                        " show line numbers
set showmatch                                                     " show matching bracket (briefly jump)
set showcmd                                                       " show typed command in status bar
set title                                                         " show file in titlebar
set laststatus=2                                                  " use 2 lines for the status bar
set matchtime=2                                                   " show matching bracket for 0.2 seconds
set matchpairs+=<:>                                               " specially for html
set relativenumber

" Default Indentation
set autoindent
set smartindent     " indent when
set tabstop=4       " tab width
set softtabstop=4   " backspace
set shiftwidth=4    " indent width
" set textwidth=79
set smarttab
set expandtab       " expand tab to space

autocmd FileType php setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType php setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType coffee,javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType html,htmldjango,xhtml,haml setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0
autocmd FileType sass,scss,css setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120

" syntax support
autocmd Syntax javascript set syntax=jquery   " JQuery syntax support
" js
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"


"-----------------
" Plugin settings
"-----------------
" Rainbow parentheses for Lisp and variants
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
autocmd Syntax lisp,scheme,clojure,racket RainbowParenthesesToggle

" tabbar
let g:Tb_MaxSize = 2
let g:Tb_TabWrap = 1

hi Tb_Normal guifg=white ctermfg=white
hi Tb_Changed guifg=green ctermfg=green
hi Tb_VisibleNormal ctermbg=252 ctermfg=235
hi Tb_VisibleChanged guifg=green ctermbg=252 ctermfg=white

" easy-motion
let g:EasyMotion_leader_key = '<Leader>'

" Tagbar
let g:tagbar_left=1
let g:tagbar_width=30
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
let g:tagbar_compact = 1
" tag for coffee
if executable('coffeetags')
  let g:tagbar_type_coffee = {
        \ 'ctagsbin' : 'coffeetags',
        \ 'ctagsargs' : '',
        \ 'kinds' : [
        \ 'f:functions',
        \ 'o:object',
        \ ],
        \ 'sro' : ".",
        \ 'kind2scope' : {
        \ 'f' : 'object',
        \ 'o' : 'object',
        \ }
        \ }

  let g:tagbar_type_markdown = {
    \ 'ctagstype' : 'markdown',
    \ 'sort' : 0,
    \ 'kinds' : [
        \ 'h:sections'
    \ ]
    \ }
endif

" Nerd Tree
let NERDChristmasTree=0
let NERDTreeWinSize=30
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
" let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos = "right"

" nerdcommenter
let NERDSpaceDelims=1
" nmap <D-/> :NERDComToggleComment<cr>
let NERDCompactSexyComs=1

" ZenCoding
let g:user_emmet_expandabbr_key='<C-j>'

" powerline
"let g:Powerline_symbols = 'fancy'

" NeoComplCache
let g:neocomplcache_enable_at_startup=1
let g:neoComplcache_disableautocomplete=1
"let g:neocomplcache_enable_underbar_completion = 1
"let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
set completeopt-=preview

imap <C-k> <Plug>(neocomplcache_snippets_force_expand)
smap <C-k> <Plug>(neocomplcache_snippets_force_expand)
imap <C-l> <Plug>(neocomplcache_snippets_force_jump)
smap <C-l> <Plug>(neocomplcache_snippets_force_jump)

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType c setlocal omnifunc=ccomplete#Complete
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.erlang = '[a-zA-Z]\|:'

" SuperTab
" let g:SuperTabDefultCompletionType='context'
let g:SuperTabDefaultCompletionType = '<C-X><C-U>'
let g:SuperTabRetainCompletionType=2

" ctrlp
set wildignore+=*/tmp/*,*.so,*.o,*.a,*.obj,*.swp,*.zip,*.pyc,*.pyo,*.class,.DS_Store  " MacOSX/Linux
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

" Keybindings for plugin toggle
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
nmap <F5> :TagbarToggle<cr>
nmap <F6> :NERDTreeToggle<cr>
nmap <F3> :GundoToggle<cr>
nmap <F4> :IndentGuidesToggle<cr>
nmap  <D-/> :
nnoremap <leader>a :Ack
nnoremap <leader>v V`]

"------------------
" Useful Functions
"------------------
" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
      \ if ! exists("g:leave_my_cursor_position_alone") |
      \     if line("'\"") > 0 && line ("'\"") <= line("$") |
      \         exe "normal g'\"" |
      \     endif |
      \ endif

" w!! to sudo & write a file
cmap w!! %!sudo tee >/dev/null %

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" sublime key bindings
nmap <D-]> >>
nmap <D-[> <<
vmap <D-[> <gv
vmap <D-]> >gv

" eggcache vim
nnoremap ; :
:command W w
:command WQ wq
:command Wq wq
:command Q q
:command Qa qa
:command QA qa



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" powerline setting
"let g:powerline_pycmd="py3"
"set laststatus=2
"set rtp+=/usr/lib/python3.8/site-packages/powerline/bindings/vim

set incsearch
set nocompatible
set wildmenu



" themes
set background=dark
colorscheme default
"colorscheme solarized
syntax enable
"colorscheme monokai
"colorscheme phd

map <C-n> :NERDTreeToggle<CR>

" hi Normal ctermfg=None


" =========Syntastic
let g:syntastic_check_on_open = 1
let g:syntastic_cpp_include_dirs = ['/usr/include/']
let g:syntastic_cpp_remove_include_errors = 1
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_auto_refresh_includes = 1
let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libstdc++'
let g:Syntastic_cpp_checkers = ['gcc']
let g:cpp_class_scope_highlight = 1
let g:cpp_class_scope_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_no_function_highlight = 1

"set error or warning signs
let g:syntastic_error_symbol = 'X'
let g:syntastic_warning_symbol = '!'
"whether to show balloons
let g:syntastic_enable_balloons = 1

" switch *.cpp *.h
nmap <silent> <Leader>sw :FSHere<cr>

" fold code  operate：za，open or close fold；zM，close all fold；zR，open all fold
"set foldmethod=indent
set foldmethod=syntax
" start vim close fold code
set nofoldenable

" YCM
highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#3E4DF0
highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900

let g:ycm_complete_in_comments=1

let g:ycm_confirm_extra_conf=0

let g:ycm_collect_identifiers_from_tags_files=0

set completeopt-=preview

let g:ycm_min_num_of_chars_for_completion=1

let g:ycm_cache_omnifunc=0

let g:ycm_seed_identifiers_with_syntax=1


" tab to space
set expandtab
" tab = 2space
set tabstop=2
" format tab
set shiftwidth=2
" let vim regard 2space as tab
set softtabstop=2

" 随 vim 自启动
"let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
"let g:indent_guides_start_level=2
" 色块宽度
"let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
":nmap <silent> <Leader>i <Plug>IndentGuidesToggle

" 标签列表

"" 设置 tagbar 子窗口的位置出现在主编辑区的左边
"let tagbar_left=1
"" 设置显示／隐藏标签列表子窗口的快捷键。速记：identifier list by tag
"nnoremap <Leader>ilt :TagbarToggle<CR>
"" 设置标签子窗口的宽度
"let tagbar_width=32
"" tagbar 子窗口中不显示冗余帮助信息
"let g:tagbar_compact=1
"" 设置 ctags 对哪些代码标识符生成标签
"let g:tagbar_type_cpp = {
"     \ 'ctagstype' : 'c++',
"     \ 'kinds'     : [
"         \ 'c:classes:0:1',
"         \ 'd:macros:0:1',
"         \ 'e:enumerators:0:0', 
"         \ 'f:functions:0:1',
"         \ 'g:enumeration:0:1',
"         \ 'l:local:0:1',
"         \ 'm:members:0:1',
"         \ 'n:namespaces:0:1',
"         \ 'p:functions_prototypes:0:1',
"         \ 's:structs:0:1',
"         \ 't:typedefs:0:1',
"         \ 'u:unions:0:1',
"         \ 'v:global:0:1',
"         \ 'x:external:0:1'
"     \ ],
"     \ 'sro'        : '::',
"     \ 'kind2scope' : {
"         \ 'g' : 'enum',
"         \ 'n' : 'namespace',
"         \ 'c' : 'class',
"         \ 's' : 'struct',
"         \ 'u' : 'union'
"     \ },
"     \ 'scope2kind' : {
"         \ 'enum'      : 'g',
"         \ 'namespace' : 'n',
"         \ 'class'     : 'c',
"         \ 'struct'    : 's',
"         \ 'union'     : 'u'
"     \ }
"\ }

" 代码导航
 
" 基于标签的代码导航

" 设置插件 indexer 调用 ctags 的参数
" 默认 --c++-kinds=+p+l，重新设置为 --c++-kinds=+l+p+x+c+d+e+f+g+m+n+s+t+u+v
" 默认 --fields=+iaS 不满足 YCM 要求，需改为 --fields=+iaSl
let g:indexer_ctagsCommandLineOptions="--c++-kinds=+l+p+x+c+d+e+f+g+m+n+s+t+u+v --fields=+iaSl --extra=+q"

" 正向遍历同名标签
nmap <Leader>tn :tnext<CR>
" 反向遍历同名标签
nmap <Leader>tp :tprevious<CR>

" 基于语义的代码导航

nnoremap <leader>jc :YcmCompleter GoToDeclaration<CR>
" 只能是 #include 或已打开的文件
nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>

" 查找

" 使用 ctrlsf.vim 插件在工程内全局查找光标所在关键字，设置快捷键。快捷键速记法：search in project
nnoremap <Leader>sp :CtrlSF<CR>
