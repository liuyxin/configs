set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" ******What I add *****
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/taglist.vim'
Plugin 'vim-scripts/L9'
Plugin 'vim-scripts/FuzzyFinder'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-scripts/grep.vim'
Plugin 'Rip-Rip/clang_complete'
Plugin 'Valloric/YouCompleteMe'
"Plugin 'Valloric/ListToggle'
Plugin 'scrooloose/syntastic'
Plugin 'Mizuchi/STL-Syntax'
Plugin 'vim-scripts/a.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'Yggdroot/indentLine'

" **********************

" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
"Plugin 'file:///usr/bin/ctags'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
"***********8zhx*******
" 开启语法高亮
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on
 nnoremap <silent> <F6> :tabn<CR>
 nnoremap <silent> <F5> :tabp<CR>
 nnoremap <silent> <F11> :Rgrep<CR>
 let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
 let g:ycm_collect_identifiers_from_tags_files = 1
 let g:ycm_seed_identifiers_with_syntax = 1
 let g:ycm_confirm_extra_conf = 0
 nnoremap <leader>gc :YcmCompleter GoToDeclaration<CR>
 nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
 nnoremap <F12> :YcmCompleter GoToDefinitionElseDeclaration<CR>
 nmap <Leader>ff :FufCoverageFile<CR>

" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 开启行号显示
set number
colorscheme desert
"开启光亮光标行
set cursorline
"hi CursorLine cterm=underline
"hi CursorLine cterm=NONE ctermbg=darkgrey ctermfg=white guibg=darkgrey guifg=white
"开启高亮光标列
set cursorcolumn
hi CursorColumn term=NONE cterm=NONE ctermbg=darkgrey ctermfg=white guibg=darkgrey guifg=white
hi CursorLine term=NONE cterm=NONE ctermbg=darkgrey ctermfg=white guibg=darkgrey guifg=white
" 高亮显示搜索结果
set hlsearch
" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set sw=4
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4
":cscope add ~/.vim/cscope.out
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cscope setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("cscope")
set csprg=/usr/bin/cscope
set csto=1
set cst
set nocsverb
" add any database in current directory
if filereadable("cscope.out")
cs add cscope.out
endif
set csverb
endif
"nmap <F10> :cs find s <C-R>=expand("<cword>")<CR><CR>
"nmap <F11> :cs find g <C-R>=expand("<cword>")<CR><CR>
"nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>
"nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
"nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
"nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
"nmap <C-@>i :cs find i^<C-R>=expand("<cfile>")<CR>$<CR>
"nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>
""""""""""""""""""""""""
" *.cpp 和 *.h 间切换
nmap <Leader>ch :A<CR>
" 子窗口中显示 *.cpp 或 *.h
nmap <Leader>sch :AS<CR>
""""""""""""""""""""""""
" 配色方案
"set background=dark
"highlight Normal ctermfg=grey
"colorscheme solarized
"colorscheme molokai
"
"
""""缩进显示"""""
let g:indentLine_char = '¦'
let g:indentLine_enabled = 1
colorscheme desert

""""""""""zhx

 """"""""""""""""""""""""""""""
 " Tag list (ctags)
 """"""""""""""""""""""""""""""
 let Tlist_Ctags_Cmd = '/usr/bin/ctags'
 "不同时显示多个文件的tag，只显示当前文件的
 let Tlist_Show_One_File = 1 
"如果taglist窗口是最后一个窗口，则退出vim
 let Tlist_Exit_OnlyWindow = 1
"在右侧窗口中显示taglist窗口
 let Tlist_Use_Left_Window = 1  

"*********clang***********
let g:clang_use_library = 1
let g:clang_library_path = '/usr/lib/llvm-3.5/lib/'
""""""""""""""""""""""""""" 
""""""""""Ctags"""""""""
set tags+=~/.vim/systags
set tags=tags;
set autochdir
""""""""""""""""""""""""
"""""折叠"""""""""""""""""""""
" 基于缩进或语法进行代码折叠
"set foldmethod=indent,这是基于缩进的自动折叠
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable
""""""""""""""""""""""""""""""""""
""""""""""""编译“”“”“”“”“”“”“”“”“
"nmap <F5> :w<CR>!g++ %<CR>

"""""""""""""""""""""""""""""""""



set runtimepath+=~/.vim_runtime
source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry
"***********cuda highlight *********
au BufNewFile,BufRead *.cu set filetype=cuda
au BufNewFile,BufRead *.cuh set filetype=cuda
