set nocompatible

execute pathogen#infect()
syntax on
filetype plugin indent on
execute pathogen#infect('bundle/{}', '~/src/vim/bundle/{}')

autocmd VimEnter * execute "NERDTree"

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set listchars=tab:>-,trail:-

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set laststatus=2
set statusline=%f "tail of the filename
set number

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

autocmd! FileType markdown hi! def link markdownItalic Normal 
let g:vim_markdown_folding_disabled=1
set nofoldenable
set runtimepath^=~/.vim/bundle/ag

let g:ag_working_path_mode="r"
set runtimepath^=~/.vim/bundle/agp

