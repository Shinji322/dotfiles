nnoremap ; :
vnoremap ; :

" Aliases
cnoreabbrev W w
cnoreabbrev Q qall
" cnoreabbrev q qall
cnoreabbrev wq wqall


" Specific Plugin configs
nmap s <Plug>(easymotion-bd-f)
nmap S <Plug>(easymotion-overwin-f2)
vmap s <Plug>(easymotion-bd-f)

" Manipulating multiple windows
" map <A-h> <C-w>h
" map <A-j> <C-w>j
" map <A-k> <C-w>k
" map <A-l> <C-w>l


" Replace all
nnoremap <A-s> :%s//gI<Left><Left><Left>
" Copy all
nnoremap <leader><C-a> ggVGy

" Fix Y behaviour
" nmap Y y$

" Autocmds
" autocmd BufNewFile,BufFilerequire(knitr) # required for knitting from rmd to md
autocmd FileType rmd map <F5> :!Rscript -e "rmarkdown::render('%')"<CR>
