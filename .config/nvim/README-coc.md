# vide

> 大而全，什么都装，现在小而精，精简到需要的内容，更专业的东西留给更专业的软件
>
> 专业的人做专业的事情，按照自己的水平先做一个可用的vim，然后在一步步学习完善。
>
> 后面学习ccls makefile等的内容，没有项目经历理解起来是费点力气的。按照自己当前的水平先配置一个可用的，以后在慢慢完善

作为一个初级vimer，我也是一点点在尝试各种插件，很多内容都是我自己的理解，可能会出错，这里只负责插件的安装和配置

建议配置完基础的插件之后不要折腾一些花里胡哨的东西了，通过配置我发现，我的瓶颈在于对vim基础不熟悉，不会写插件，许多自己想实现的功能插件是无法完全满足你的，这就需要你自己去摸索，在配置过程中我也知道了我对vim不熟悉导致很多高级插件都用不来。

所以我建议是先配置一个基础的能用的投入到生产中，然后在平时进行学习，一点一点的将vim配置成适合自己的样子。

我打算是这样的，以我目前对vim的了解来配置，配置到什么程度就是什么程度，我急需去深入了解一下vim才能继续下去，这个配置我会一点一点进行积累与完善的，尽量将每个插件的配置和用法描述好。如果有错误欢迎指正，我们共同完善。

这个配置我首先会以工程分类为依据进行配置，然后再介绍一些插件的配置和使用，有些花里胡哨的插件配置就不在这里赘述了。

coc-language是对lsp的扩展，可以使用coclist command看到一些快速命令，lsp是语言服务器，根据作者的说法，如果lsp不是nodejs写的那么就不会自带，一般coc-language会自动下载lsp，不过也可以自己配置。

![1557400660691](assets/1557400660691.png)

可以从[这里](https://langserver.org/)找到可用的lsp，目前我

1. bash  bash-language-server
2. python
3. c/c++ ccls
4. viml
5. html
6. css
7. json
8. java 安装jdtls
9. js
10. ts

python3 neovim

python2 neovim

npm neovim

被coc圈粉了

## 简单使用

使用vim-plug安装：

```shell
Plug 'neoclide/coc.nvim',
            \ {
            \ 'tag': '*',
            \ 'do': './install.sh',
            \ }
```

配置：

coc.vim

```shell
"CoC configlet 
let g:coc_snippet_next = '<TAB>'
let g:coc_snippet_prev = '<S-TAB>'
let g:coc_status_error_sign = '•'
let g:coc_status_warning_sign = '•'
let g:coc_global_extensions =['coc-html','coc-css','coc-snippets','coc-prettier','coc-eslint','coc-emmet','coc-tsserver','coc-pairs','coc-json','coc-python','coc-imselect','coc-highlight','coc-git']

augroup MyAutoCmd
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

"Use tab for trigger completion with characters ahead and navigate
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
"inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
```

## 项目

对于项目开发，我们需要用到

1. 补全跳转、代码检查、标签列表、文件管理、运行、debug、git管理这几个功能

### c/c++项目

使用coc补全框架，lsp可以选用clangd，也可以选用ccls，这里推荐cclwenjains。

对于`clangd`，貌似只支持`compile_commands.json`文件，对于这个文件，可以手动写，也可以通过`cmake`来自动生成，对于手动写我没有研究过，而使用`cmake`自动生成则需要会写`CMakeList.txt`，这里有一篇`CMakeList.txt`的[简单的教程](#)。也可以使用`makefile`文件来生成`compile_commands.json`，这个需要用到[bear](https://github.com/rizsotto/Bear)这个软件。当然，生成`compile_commands.json`文件还有其他很多方式，可以参考[这里](https://github.com/MaskRay/ccls/wiki/Project-Setup)。

> compile_commands.json
>
> Compilation database as project format. With non-CMake and non-Gradle projects, you can still benefit from the advanced IDE features that CLion provides. ... A compilation database is a **JSON**-formatted file named **compile_commands**.**json** that contains structured data about every compilation unit in your project.

以我的理解`compile_commands.json`貌似只对现有的工程有效，也就是对学习已有代码很有帮助，而对于新建的工程则需要每次添加一个文件的时候更新一次`compile_commands.json`文件，我不清楚我理解的对不对。

下面推荐ccls作为lsp的原因也是基于上述考虑，ccls既可以使用`compile_commands.json`文件也可以使用自定义的`.ccls`文件。`.ccls`文件易于编写，在项目根目录加入这个文件之后就可以进行补全，跳转之类的功能了。下面是`.ccls`文件的简单使用。

#### `.ccls`文件的简单使用

`.ccls`是一个行文本，位于项目根目录，用来指定编译参数。每一行都会作为编译参数增加到编译命令中，参数中不能有空格，比如`-Ifoo`，`-I\nfoo`是可以的，而`-I foo`是不可以。简单说了就是在编译项目的时候用到了哪些参数，那么这些参数一个一行添加到`.ccls`文件中就可以使用了。

```
clang
-Ifoo
-I./include
-I
../include

-I foo         这是错误的，上面的都是对的，除了第一行，其余的每一行都会增加到编译命令中
```

当然每一行也可以使用%开头的指令，来指定该行的参数。

`%compile_commands.json`

默认`.ccls`文件中的编译选项只会应用到没有在`compile_commands.json`文件中列出的文件中。

如果`%compile_commands.json`出现在`.ccls`文件开头，然后`%compile_commands.json`也被解析过了，那么`.ccls`中的编译指令将会追加到在`%compile_commands.json`中列出的文件后面。

##### `%c` / `%cpp` / `%objective-c` / `%objective-cpp`

这些参数只能被用来解析c（%c），c++（%cpp），object-c（%objective-c），object-c++（%objective-c++）文件。

##### `%h` / `%hpp`

这些参数用来索引c头文件（%h：*.h）或者c++头文件（%hpp：*.hh *.hpp），需要注意的是`\*.h`文件被认为是c的头文件而不是c++的头文件。增加下面的命令让`\*.h`文件作为c++头文件来解析。

```
%h -x
%h c++-header
```

如果工程中既有c也有c++文件，那么a.h的编译选项可能来自c文件而不是c++，可能会出现如下错误，`unknown type name 'class'

##### 编译驱动程序

第一行如果不是`%compile_commands.json`，那么通常就是clang，不推荐clang++，如果有c文件，那么容易出错。

#### 实例

写完.ccls文件之后就可以愉快的写c/c++项目了，下面是一个简单例子。

[![asciicast](assets/245566.svg)](https://asciinema.org/a/245566)

<script id="asciicast-245582" src="https://asciinema.org/a/245582.js" async></script>

### java

https://github.com/neoclide/coc-java

1. CocCommand java.updateLanguageServer 安装jdt
2. CocCommand java.projectConfiguration.update  项目更新





## 快捷键

### coc

| 快捷键     | 模式 | 描述                                           |
| ---------- | ---- | ---------------------------------------------- |
| ctrl space |      | 强制触发补全                                   |
| space l    |      | CocList                                        |
| space d    |      | cocList diagnostics                            |
| space e    |      | CocList extensions                             |
| space c    |      | CocList commands                               |
| space t    |      | CocList outline                                |
| space s    |      | CocList -I symbols                             |
| space [    |      | 上一个diagnostics条目                          |
| space ]    |      | 下一个diagnostics条目                          |
| space f    |      | 对选中的区域进行格式化                         |
| :Format    |      | 格式化                                         |
| space rn   |      | 重命名变量，可以将本buffer的所有变量进行重命名 |
| gd         |      | 跳转到定义                                     |
| gy         |      | 跳转到类型定义                                 |
| gi         |      | 跳转到实现                                     |
| gr         |      | 跳转到引用                                     |
| shift k    |      | 悬浮窗口查看定义                               |
| space k    |      | 悬浮窗口查看函数参数                           |
| space qf   |      | quick fix 快速修复                             |


### 多光标

可以使用鼠标，ctrl+鼠标左键，前提`set mouse=a`

| 快捷键              | 模式    | 描述                                                         |
| ------------------- | ------- | ------------------------------------------------------------ |
| tab                 | virsual | 模式转变，插入模式或者选择扩展模式                           |
| ctrl n(ext)         | normal  | 选中一个单词并进入多光标模式，或者一直选中下一个单词等同于 ] |
| ctrl c(ursor)       | normal  | 在当前位置插入光标，再按取消                                 |
| crtl s(kip)         | visual  | 跳过当前单词或者符号（ctrl up or down）                      |
| ctrl a(ll)          | normal  | 选中所有单词                                                 |
| ctrl down(方向下键) | normal  | 快速垂直插入                                                 |
| ctrl up(方向上键)   | normal  | 快速垂直插入                                                 |
| n                   | virsual | 向下移动光标，不选中单词，单纯移动光标                       |
| N                   | virsual | 向上移动光标                                                 |
| ]                   | visual  | ctrl n之后执行，选中下一个单词，等同于ctrl n                 |
| [                   | visual  | ctrl n之后执行，选中上一个单词                               |
| {                   | visual  | 选中的光标之间进行跳转，跳到上一个光标处                     |
| }                   | visual  | 选中的光标之间进行跳转，跳到下一个光标处                     |
| q                   | visual  | 取消当前光标                                                 |
| Q                   | visual  | 取消当前区域                                                 |
| o                   | virsual | 光标反方向                                                   |
| m                   | virsual | 选择模式，8mj，向下8行，选中mip当前段落里的该单词，mas当前行该单词 |

### leaderf

似乎可以代替tagbar了，进入之后按下tab，按下F1可以查看帮助

| 快捷键 | 模式   | 描述                         |
| ------ | ------ | ---------------------------- |
| alt f  | normal | 搜索当前工作目录下的所有文件 |
| alt t  | normal | 搜索当前文件的tag            |
| alt T  | normal | 搜索所有buffer的tag          |
| alt b  | normal | 搜索所有的buffer             |
| alt s  | normal | 搜索当前buffer的line         |
| alt S  | normal | 搜索所有buffer的line         |
| alr r  | normal | 搜索最近文件                 |

### always match tag

| 快捷键  | 模式   | 描述                |
| ------- | ------ | ------------------- |
| space 5 | normal | 在<tag>之间进行跳转 |
|         |        |                     |
|         |        |                     |

### easymotion

| 快捷键    | 模式   | 描述                 |
| --------- | ------ | -------------------- |
| alt j     |        | 多窗口行跳转         |
| alt k(ey) |        | 多窗口符号跳转       |
| f (char)  | normal | 快速跳转到某个字符处 |

### 窗口与buffer

| 快捷键    | 模式 | 描述         |
| --------- | ---- | ------------ |
| ctrl hjkl |      | 快速移动窗口 |
| alt w     |      | 窗口选择     |
| alt h     |      | 左侧buff     |
| alt l     |      | 右侧buff     |

