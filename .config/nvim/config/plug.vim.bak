""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"安装vim-plug
"neovim
"curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"vim
"curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.cache/plugins')

" 代码补全
" 去youcomplete.vim中设置白名单
Plug 'Valloric/YouCompleteMe',
    \ {
    \ 'do': './install --clang-completer --go-completer --ts-completer --java-completer',
    \ 'for': ['h', 'c', 'hpp', 'cpp', 'python', 'javascript', 'javascript.jsx', 'ts', 'java', 'go' ]
    \ }
    " 直接设置白名单
    "

" Plug 'neoclide/coc.nvim',
"             \ {
"             \ 'tag': '*',
"             \ 'do': './install.sh',
"             \ }

if has('nvim')
    Plug 'Shougo/deoplete.nvim',
        \ {
        \ 'do': ':UpdateRemotePlugins',
        \ }
    " \ 'for': ['html', 'css', 'xml', 'sh', 'json', 'vim']
else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
endif

"""""""""""web"""""""""""
Plug 'mattn/emmet-vim', {'for': [ 'html','htm', 'xml', 'xhtml', 'css' ]}
Plug 'alvan/vim-closetag', {'for': ['html', 'htm', 'xml', 'xhtml', 'css']}
Plug 'gko/vim-coloresque', {'for': ['html', 'htm', 'xml', 'xhtml', 'css', 'vim']}
Plug 'valloric/MatchTagAlways', {'for': ['html', 'htm', 'xml', 'xhtml', 'css', 'vim']}


"""""""""""latex"""""""""""
" latex 插件
Plug 'lervag/vimtex',
    \ {
    \ }
    " \ 'for': ['tex'],

" repl
" Plug 'sillybun/vim-repl', {'do':'./install.sh', 'for': ['python', 'bash', 'sh']}
" 异步执行
" Plug 'skywind3000/asyncrun.vim', {'for': ['python', 'javascript', 'c', 'cpp', 'sh', 'go', 'ts', 'java']}

"""""""""""general"""""""""""""
" 代码检查 ale
Plug 'w0rp/ale',
    \ {
    \ 'for': ['asm', 'h', 'hpp', 'c', 'cpp', 'python', 'javascript', 'ts', 'java', 'go', 'html', 'css', 'sh', 'vim', 'tex'],
    \ }

" 格式化代码
Plug 'Chiel92/vim-autoformat',
    \ {
    \ 'on': 'Autoformat',
    \ }
    " \ 'for': ['asm', 'h', 'hpp', 'c', 'cpp', 'python', 'js', 'ts', 'java', 'go', 'html', 'css', 'vim', 'tex', 'sh'],

" 代码注释
Plug 'scrooloose/nerdcommenter'

" 函数描述
Plug 'vim-scripts/DoxygenToolkit.vim',
            \ {
            \ 'on': ['Dox', 'DoxAuthor', 'DoxBlock', 'DoxLic', 'DoxUndoc' ]
            \ }

" 支持多种语言的代码高亮插件
Plug 'sheerun/vim-polyglot'

""
" 标签栏
Plug 'majutsushi/tagbar',
    \ {
    \ 'for': ['asm', 'h', 'hpp', 'c', 'cpp', 'python', 'js', 'ts', 'java', 'go', 'html', 'css', 'vim', 'sh', 'tex', 'md'],
    \ }
    " \ 'on': ['<Plug>Tagbar_Toggle'],

" 生成tags, 好像也需要ctags
" Plug 'ludovicchabant/vim-gutentags'
" 代码缩进线
Plug 'Yggdroot/indentLine',
    \ {
    \ 'for': ['asm', 'h', 'hpp', 'c', 'cpp', 'python', 'js', 'ts', 'java', 'go', 'html', 'css', 'vim', 'sh', 'tex'],
    \ }

" 彩虹括号
Plug 'luochen1990/rainbow'

" 括号补全
Plug 'jiangmiao/auto-pairs'

" 包围
Plug 'tpope/vim-surround',
    \ {
    \ 'for': ['asm', 'h', 'hpp', 'c', 'cpp', 'python', 'js', 'ts', 'java', 'go', 'html', 'css', 'vim', 'sh', 'tex'],
    \ }

" 快速检索
Plug 'Yggdroot/LeaderF',
    \ {
    \ 'do': './install.sh',
    \ }
if !has('nvim')
    Plug 'vim-utils/vim-alt-mappings'
endif

" 目录导航
"
if has('nvim')
    Plug 'Shougo/defx.nvim',
        \ {
        \ 'do': ':UpdateRemotePlugins',
        \ }
else
    Plug 'Shougo/defx.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'kristijanhusak/defx-git'
" Plug 'kristijanhusak/defx-icons'

" 开始
Plug 'mhinz/vim-startify',
            \ {
            \ }

" 状态栏
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'enricobacis/vim-airline-clock'

" goyo
Plug 'junegunn/goyo.vim',
            \ {
            \ 'on': 'Goyo',
            \ }
Plug 'junegunn/limelight.vim',
            \ {
            \ 'on': 'Limelight',
            \ }

" 去除空白
Plug 'ntpeters/vim-better-whitespace'

" 代码块引擎
Plug 'SirVer/ultisnips',
    \ {
    \ 'for': ['asm', 'h', 'hpp', 'c', 'cpp', 'python', 'js', 'ts', 'java', 'go', 'html', 'css', 'sh', 'tex', 'vim']
    \ }

" 代码块集合
Plug 'honza/vim-snippets',
    \ {
    \ 'for': ['asm', 'h', 'hpp', 'c', 'cpp', 'python', 'js', 'ts', 'java', 'go', 'html', 'css', 'sh', 'tex', 'vim']
    \ }

" 窗口切换
Plug 't9md/vim-choosewin',
    \ {
    \ 'on': 'ChooseWin',
    \ }

" 图标
Plug 'ryanoasis/vim-devicons'

" 平滑滚动
Plug 'terryma/vim-smooth-scroll'

" 二进制查看
Plug 'Shougo/vinarise.vim',
            \ {
            \ 'on': 'Vinarise',
            \ }

" 快速移动
Plug 'easymotion/vim-easymotion'

" 多光标
Plug 'terryma/vim-multiple-cursors'

" 重复
Plug 'tpope/vim-repeat'

" 字典
Plug 'voldikss/vim-translate-me',
    \ {
    \   'on': ['<Plug>Translate', '<Plug>TranslateW']
    \ }

" vim中文文档
Plug 'yianwillis/vimcdoc'

call plug#end()

