set nocompatible

syntax enable 
filetype plugin on

set number

set ts=2 sts=2 sw=2 noexpandtab

set list
set listchars=tab:▸\ ,eol:¬

highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

if has("autocmd")
	filetype on

	autocmd FileType javascript setlocal ts=2 sts=2 sw=2 noexpandtab

	autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
	autocmd FileType BufNewFile,BufRead *.rss,*.atom setfiletype xml
endif

" Finding Files
set path+=**
set wildignore+=*/node_modules/*
set wildmenu

" autoread
set autoread
au FocusGained,BufEnter * :checktime

" File Browsing
let g:netrw_banner=0 " no banner
let g:netrw_browse_split=4 " open in prior window
let g:netrw_altv=1 " open splits to the right
let g:netrw_liststyle=3 " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'


