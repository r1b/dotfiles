execute pathogen#infect()
syntax on
filetype plugin indent on

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

"scheme
autocmd filetype lisp,scheme setlocal equalprg=scmindent.rkt

"jsx
let g:jsx_ext_required = 0

"2 spaces for web stuff
autocmd filetype html,javascript,css,jsx,scss,json,jade setlocal shiftwidth=2 tabstop=2

"md is markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

"v illegal
let @b=':%!xxd -r'
let @t=':%!xxd'
