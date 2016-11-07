execute pathogen#infect()
set number	
set linebreak	
set showbreak=+++	
set wrap
set visualbell	
set noeb vb t_vb=
set rnu 
 
set smartcase
set ignorecase		

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set cindent
set cinkeys-=0#
set indentkeys-=0#
set colorcolumn=79

set laststatus=2
set statusline+=%F

autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2

noremap  <buffer> <silent> k gk
noremap  <buffer> <silent> j gj
noremap  <buffer> <silent> 0 g0
noremap  <buffer> <silent> $ g$

au BufNewFile,BufRead *.markdown,*.mdown,*.mkd,*.mkdn,*.mdwn,*.md  set ft=markdown

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set list

let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11'
let g:syntastic_cpp_check_header = 1

