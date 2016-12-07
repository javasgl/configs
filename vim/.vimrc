syntax on
set number
set ruler
set autoindent
set hls
set nowrap
set smarttab
set smartindent
set tabstop=4
set expandtab
set synmaxcol=256
set softtabstop=4
set shiftwidth=4
set ignorecase
"set ic 同上,忽略大小写
"set noignorecase
"set noic

call plug#begin('~/.vim/plugins')
" MarkdownPreview Plugin
Plug 'iamcco/markdown-preview.vim'
call plug#end()

"let g:mkdp_path_to_chrome = "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
let g:mkdp_path_to_chrome = "open -a Google\\ Chrome"

" 设置 chrome 浏览器的路径（或是启动 chrome（或其他现代浏览器）的命令）

let g:mkdp_auto_start = 0
" 设置为 1 可以在打开 markdown文件的时候自动打开浏览器预览，只在打开markdown 文件的时候打开一次

let g:mkdp_auto_open = 0
" 设置为 1 在编辑 markdown的时候检查预览窗口是否已经打开，否则自动打开预览窗口

let g:mkdp_auto_close = 1
" 在切换 buffer的时候自动关闭预览窗口，设置为 0则在切换 buffer 的时候不自动关闭预览窗口

let g:mkdp_refresh_slow = 0
" 设置为 1 则只有在保存文件，或退出插入模式的时候更新预览，默认为 0，实时更新预览

let g:mkdp_command_for_global = 1
"  设置为 1 则所有文件都可以使用MarkdownPreview进行预览，默认只有 markdown 文件可以使用改命令


nmap <silent> <F8> <Plug>MarkdownPreview
imap <silent> <F8> <Plug>MarkdownPreview
nmap <silent> <F9> <Plug>StopMarkdownPreview
imap <silent> <F9> <Plug>StopMarkdownPreview

