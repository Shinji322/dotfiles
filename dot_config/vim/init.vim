" For my sensible vim defaults

set title
set clipboard+=unnamedplus
set guioptions+=a
set number relativenumber
set nocompatible
set expandtab
set encoding=UTF-8
filetype plugin on
syntax on

set tabstop=4 softtabstop=4
set shiftwidth=4
"set tabstop=2 softtabstop=2
"set shiftwidth=2
set noswapfile
set spelllang = "en"

" search related things
set hlsearch
set incsearch
set ignorecase
set smartcase

" autocenter document
autocmd InsertEnter * norm zz

" Fix indenting visual block
vmap < <gv
vmap > >gv

" Other
set mouse=a

" enable autocompletion menu after pressing tab
set wildmenu

" Make wildmenu behave like similar to Bash completion
set wildmode=list:longest

" This doesn't work for some reason
set autochdir

" Misc
" lua require('dap-python').setup('~/.local/share/virtualenvs/debugpy/bin/python')
