execute pathogen#infect()
filetype plugin indent on
syntax on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" builtin settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"colors
set background=light
colorscheme solarized

"display
set colorcolumn=80
set cursorline
set grepprg=ag\ --nogroup\ --nocolor
set laststatus=2
set list listchars=tab:»·,trail:·
set noruler
set number
set showmatch

"behavior
set autoindent
set backspace=2
set expandtab
set hidden
set ignorecase
set incsearch
set nowrap
set shiftwidth=4
set smarttab
set smartcase
set softtabstop=4
set tabstop=4
set wildmenu
set wildmode=full

"statusline stolen from @zonika
set statusline=%<%f
set statusline+=\ %w%h%m%r
set statusline+=%=%-14.(%l,%c%V%)\ %p%%

"omnicompletion
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete

"scheme
autocmd filetype lisp,scheme setlocal equalprg=scmindent.rkt

"web
autocmd filetype html,javascript,css,jsx,scss,json,jade setlocal shiftwidth=2 tabstop=2 "2 spaces for web

"md is markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

"illegal bin2hex hex2bin
let @b=':%!xxd -r'
let @t=':%!xxd'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" plugin settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"vim-jsx
let g:jsx_ext_required = 0 "jsx in html OK

"tslime.vim
let g:tslime_always_current_session = 1 "force current session
let g:tslime_always_current_window = 1 "force current window

vmap <C-c><C-c> <Plug>SendSelectionToTmux
nmap <C-c><C-c> <Plug>NormalModeSendToTmux
