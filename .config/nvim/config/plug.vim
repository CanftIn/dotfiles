" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" "安装vim-plug
" "neovim
" "curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.cache/plugins')

" "{{--------coc
Plug 'neoclide/coc.nvim', { 'do': './install.sh nightly' }
" "}}

" "{{--------git
Plug 'tpope/vim-fugitive'
Plug 'neoclide/vim-easygit'
Plug 'tpope/vim-fugitive'
Plug 'rhysd/git-messenger.vim'
" "}}

" "{{--------web
Plug 'alvan/vim-closetag', {'for': ['html', 'htm', 'xml', 'xhtml']}
Plug 'valloric/MatchTagAlways', {'for': ['html', 'htm', 'xml', 'xhtml']}
" "}}

" "{{--------viml
Plug 'Shougo/neco-vim', {'for': ['vim', 'viml']}
Plug 'neoclide/coc-neco', {'for': ['vim', 'viml']}
Plug 'roxma/vim-hug-neovim-rpc', {'for': ['vim', 'viml']}
" "}}

" "{{--------markdown
Plug 'tpope/vim-markdown', {'for': ['markdown', 'md']}
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'md'] }
" "}}

" "{{--------latex
Plug 'lervag/vimtex'
" "}}

" "{{--------code check
Plug 'w0rp/ale'
" "}}

" "{{--------code format
Plug 'Chiel92/vim-autoformat'
" "Plug 'sbdchd/neoformat'

" "{{---------文档类
Plug 'scrooloose/nerdcommenter'
Plug 'vim-scripts/DoxygenToolkit.vim', {'on': ['Dox', 'DoxAuthor', 'DoxBlock', 'DoxLic', 'DoxUndoc' ]}
" "}}

" "{{---------highlight
Plug 'sheerun/vim-polyglot'
" "}}

" "{{---------beautify
Plug 'Yggdroot/indentLine', { 'for': ['asm', 'h', 'hpp', 'c', 'cpp', 'python', 'js', 'ts', 'java', 'go', 'html', 'css', 'vim', 'sh', 'tex']}
Plug 'luochen1990/rainbow'
Plug 'mhinz/vim-startify'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" " goyo
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' }
Plug 'junegunn/limelight.vim', { 'on': 'Limelight' }
" " icon
Plug 'ryanoasis/vim-devicons'
" "}}

" "{{----------tools
Plug 'majutsushi/tagbar',  { 'for': ['asm', 'h', 'hpp', 'c', 'cpp', 'python', 'js', 'ts', 'java', 'go', 'html', 'css', 'vim', 'sh', 'tex', 'md'] }
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
" " visual 增强
Plug 'terryma/vim-expand-region'
" " undo
Plug 'simnalamburt/vim-mundo', {'on': 'MundoToggle'}
Plug 'Yggdroot/LeaderF',  { 'do': './install.sh' }
Plug 'Shougo/defx.nvim',  { 'do': ':UpdateRemotePlugins'}
Plug 'kristijanhusak/defx-git'
Plug 'kristijanhusak/defx-icons'
Plug 'ntpeters/vim-better-whitespace'
Plug 'honza/vim-snippets'
" " 窗口切换
Plug 't9md/vim-choosewin',  { 'on': 'ChooseWin' }
" " 平滑滚动
" Plug 'terryma/vim-smooth-scroll'
" "Plug 'yuttie/comfortable-motion.vim'
" " 二进制查看
Plug 'Shougo/vinarise.vim', { 'on': 'Vinarise' }
" " 快速移动
Plug 'easymotion/vim-easymotion'
Plug 'rhysd/clever-f.vim'
" " 多光标
Plug 'mg979/vim-visual-multi'
" " 键位查找
" " Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
" " 重复
Plug 'tpope/vim-repeat'
" " 字典
Plug 'voldikss/vim-translate-me', {'on': ['<Plug>Translate', '<Plug>TranslateW']  }
" " vim中文文档
Plug 'yianwillis/vimcdoc'

call plug#end()

