" pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on



set colorcolumn=81

set incsearch

set number

set expandtab
set shiftwidth=2
set tabstop=2

set showtabline=2

set splitbelow
set splitright

set cm=blowfish

autocmd BufWritePre * :%s/\s\+$//e

" Ack (the_silver_searcher / ag)
let g:ackprg="ag --hidden --ignore-dir .git"

" colors
"colorscheme default
colorscheme default256

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
