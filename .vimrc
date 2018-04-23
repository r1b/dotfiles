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

"scheme
autocmd filetype lisp,scheme setlocal equalprg=scmindent.rkt

"jsx
let g:jsx_ext_required = 0

"2 spaces for web stuff
autocmd filetype html,javascript,jsx,scss,json setlocal shiftwidth=2 tabstop=2

"md is markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

"v illegal
let @b=':%!xxd -r'
let @t=':%!xxd'
