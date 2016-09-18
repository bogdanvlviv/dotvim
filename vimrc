execute pathogen#infect()
syntax on
filetype plugin indent on



set number

set colorcolumn=81

set tabstop=2
set shiftwidth=2
set expandtab

set cm=blowfish

autocmd BufWritePre * :%s/\s\+$//e

colorscheme molokai

" Ack (the_silver_searcher / ag)
let g:ackprg="ag"

" fzf
set rtp+=~/.fzf

" nerdtree
let NERDTreeShowHidden=1
let NERDTreeWinSize=50
map <C-\> :NERDTreeToggle<CR>

" syntastic
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=2
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_loc_list_height=3
let g:syntastic_ruby_checkers=["mri", "rubocop"]
