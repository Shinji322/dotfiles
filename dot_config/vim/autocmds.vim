" Markdown/RMarkdown

autocmd FileType rmd map <F5> :!Rscript -e "rmarkdown::render('%')"<CR>
autocmd FileType rmd inoremap ,i ![]()<Left><Left><Left>
autocmd FileType rmd inoremap ,a []()<Left><Left><Left>
autocmd FileType rmd inoremap ,1 #<Space>
autocmd FileType rmd inoremap ,2 ##<Space>
autocmd FileType rmd inoremap ,3 ###<Space>
autocmd FileType rmd inoremap ,4 ####<Space>
autocmd FileType rmd inoremap ,5 #####<Space>
autocmd FileType rmd inoremap ,u *<Space>
autocmd FileType rmd inoremap ,o 1.<Space>
autocmd FileType rmd inoremap ,f +@fig:
autocmd FileType rmd inoremap <C-b> ****<Left><Left>

autocmd FileType markdown map <F5> :!pandoc -f markdown -t html '%' > "$(extensionless '%').html"<CR>

" Html
autocmd FileType html map <F5> :!pandoc -f html -t markdown '%' > "$(extensionless '%').md"<CR>


" Calcurse
autocmd BufRead,BufNewFile /tmp/calcurse*,~/.local/share/calcurse/notes/* set filetype=markdown


" Read rc files as cfg
autocmd BufRead,BufNewFile *rc set filetype=cfg
" Some files may be xyzrc.bak for example
autocmd BufRead,BufNewFile *rc.* set filetype=cfg
" Except these ones
autocmd BufRead,BufNewFile sxhkdrc* set filetype=sh
autocmd BufWrite sxhkdrc* :!pkill sxhkd && notify-send "sxhkd config reloaded" && sxhkd &!
autocmd BufRead,BufNewFile lfrc* set filetype=sh
autocmd BufRead,BufNewFile *zshrc* set filetype=sh
autocmd BufRead,BufNewFile *xinitrc* set filetype=sh
autocmd BufWrite bm-dirs,bm-files | !~/.local/bin/shortcuts


" Autocompile
autocmd FileType cpp map <F4> :!make clean && make && ./build/* 2>&1<CR>
autocmd FileType c map <F4> :!make<CR>
" huzzah this works! 
" autocmd FileType scss map <F4> :set autochdir | !sassc '%' > ../css/style.css 
" autocmd BufWrite style.scss set autochdir | !sassc '%' > ../css/style.css 
" autocmd BufWrite *tmux.conf* | !tmux kill-server && tmux start-server


" Ensure files are read as I want
autocmd BufRead,BufNewFile *.md set filetype=markdown

" 2 tabs on html
autocmd FileType html set tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType rmd set tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType md set tabstop=2 softtabstop=2 shiftwidth=2

" For <C-e> in terminal, make sure it uses shell script
autocmd BufRead,BufNewFile zsh* set filetype=sh

" Conf files don't work sometimes?
autocmd BufRead,BufNewFile *.conf set filetype=conf
