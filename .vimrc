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
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
nnoremap ,m :w <BAR> !lessc % > %:t:r.css<CR><space>

"augroup ruby_autocmd
"    autocmd!
"    autocmd FileType ruby,eruby,yaml set softtabstop=2 tabstop=8 shiftwidth=2 et
"augroup END

let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"
