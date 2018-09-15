set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'hashivim/vim-terraform'
Plugin 'rust-lang/rust.vim'
Plugin 'mxw/vim-jsx'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'flowtype/vim-flow'
Plugin 'https://git.foldling.org/vim-scheme.git'
call vundle#end()

filetype plugin indent on

syntax on
set background=light
colorscheme solarized

set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set smarttab
set number
set backspace=2
set autoindent
set noruler
set incsearch
set wildmenu
set wildmode=full
set cursorline
set laststatus=2
set hidden
set colorcolumn=80
set list listchars=tab:»·,trail:·
set grepprg=ag\ --nogroup\ --nocolor
set ignorecase
set synmaxcol=256

"autoformat
autocmd BufWritePre * :normal ==

"autoclose parens
inoremap ( ()<left>

"scheme
autocmd filetype lisp,scheme setlocal formatprg=scmindent
setl lispwords+=let-values,condition-case,with-input-from-string
setl lispwords+=with-output-to-string,handle-exceptions,call/cc,rec,receive
setl lispwords+=call-with-output-file
let g:is_chicken = 1

"jsx
let g:jsx_ext_required = 0

"web
autocmd filetype html,javascript,jsx,scss,json setlocal shiftwidth=2 tabstop=2

"markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

"binary data
let @b=':%!xxd -r'
let @t=':%!xxd'
