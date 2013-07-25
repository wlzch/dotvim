set nocompatible
call pathogen#infect()
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

set et
set sw=4
set ts=4
set smarttab
set noswapfile
set number
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp
set autoindent
set copyindent
set smarttab

filetype plugin indent on
syntax on

au! BufRead,BufNewFile *.json set filetype=json 
au BufRead,BufNewFile *.scss set filetype=scss

augroup json_autocmd 
  autocmd! 
  autocmd FileType json set autoindent 
  autocmd FileType json set formatoptions=tcq2l 
  autocmd FileType json set textwidth=78 shiftwidth=2 
  autocmd FileType json set softtabstop=2 tabstop=8 
  autocmd FileType json set expandtab 
  autocmd FileType json set foldmethod=syntax 
augroup END 

autocmd vimenter * NERDTree
autocmd vimenter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
au FileType javascript setl sw=2 ts=2 et
au FileType html setlocal shiftwidth=2 tabstop=2
au FileType twig setlocal shiftwidth=2 tabstop=2
au FileType jinja setlocal shiftwidth=2 tabstop=2
au FileType less setlocal shiftwidth=2 tabstop=2
nnoremap ,m :w <BAR> !lessc % > %:t:r.css<CR><space>

"write as sudo
cmap w!! %!sudo tee > /dev/null %

let g:instant_markdown_slow = 1
