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

set backspace=2

set showtabline=2

set splitbelow
set splitright

set cm=blowfish

autocmd BufWritePre * :%s/\s\+$//e

" Ack (the_silver_searcher / ag)
let g:ackprg="ag --hidden"

" colors
"colorscheme default
colorscheme default256

" fzf
set rtp+=~/.fzf
command! F FZF

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
let g:syntastic_css_checkers=["stylelint"]
let g:syntastic_javascript_checkers=["eslint"]
let g:syntastic_ruby_checkers=["mri", "rubocop"]

" vim-test
let test#strategy="vimterminal"

" <Leader>: '\'
let mapleader='\'
map <Leader>byebug orequire "byebug"; byebug<Esc>
map <Leader>debug orequire "debug"; binding.break<Esc>
map <Leader>pry orequire "pry"; binding.pry<Esc>
map <Leader>irb orequire "break"; binding.irb<Esc>
map <Leader>tn :tabnew<Esc>
map <Leader>to :tabonly<Esc>
map <Leader>qa :qa<Esc>

" resize current window
map < <C-w>4<
map > <C-w>4>
map + <C-w>4+
map - <C-w>4-

" commands
function! Ctags()
  let ctags = "ctags --recurse"

  echom "Executing: `" . ctags . "`"

  echom system(ctags)
endfunction
command! Ctags call Ctags(<f-args>)

function! CtagsGems()
  let ctags_gems = "ctags --recurse $(bundle list --paths)"

  echom "Executing: `" . ctags_gems . "`"

  echom system(ctags_gems)
endfunction
command! CtagsGems call CtagsGems(<f-args>)

function! FindSed(name, regexp)
  let find_sed = "find . -type f -name " . a:name . " -exec sed -i " . a:regexp . " {} \\;"

  echom "Executing: `" . find_sed . "`"

  echom system(find_sed)
endfunction
command! FindSed call FindSed(<f-args>)

function! RemoveSwapFiles()
  let find_delete = "find . -type f -name '.*.sw*' -delete"

  echom "Executing: `" . find_delete . "`"

  echom system(find_delete)
endfunction
command! RemoveSwapFiles call RemoveSwapFiles(<f-args>)

function! SetDefaultKeymap()
  set keymap=""
endfunction
command! SetDefaultKeymap call SetDefaultKeymap(<f-args>)

function! SetUkrainianKeymap()
  set keymap=ukrainian-jcuken
endfunction
command! SetUkrainianKeymap call SetUkrainianKeymap(<f-args>)
