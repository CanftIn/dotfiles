"-------------------------------------------"
"                                           "
"          base config                      "
"                                           "
"-------------------------------------------"

"记住退出位置
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" 中文提示
language messages zh_CN.utf-8

" 是否允许使用鼠标
"set mouse=a
set cursorline
" set cursorcolumn
set encoding=utf8
set helplang=cn
set number
set numberwidth=4
set shiftround
set relativenumber
set smartindent
" 自动换行缩进
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set showmatch
set linebreak
set ignorecase
set incsearch
set hlsearch
set foldenable
set wildmenu
" 不显示模式
set noshowmode
set cmdheight=1
"set autochdir   " 将文件所在路径设置为vim的当前路径
let autosave=10
set laststatus=0

"set conceallevel=0  " json正常显示文本
"这样quickfix里面的跳转会先复用已有文件的窗口，再复用已有标签，最后没有的话新建标签
set switchbuf=useopen,usetab,newtab
set tw=80

" 来自coc
"set cmdheight=2
set shortmess+=c
set signcolumn=auto:3
