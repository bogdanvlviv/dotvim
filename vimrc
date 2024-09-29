" pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on



set colorcolumn=81

set incsearch

set number

set ruler

set expandtab
set shiftwidth=2
set tabstop=2

set backspace=2

set showtabline=2

set splitbelow
set splitright

set cryptmethod=blowfish2

autocmd BufWritePre * :%s/\s\+$//e

" ack
if executable("ag")
  let g:ackprg="ag --hidden"
endif

" ale
let g:ale_virtualtext_cursor="disabled"

" colors
colorscheme 256

" fzf
set rtp+=~/.fzf
command! F FZF

" nerdtree
let g:NERDTreeShowHidden=1
let g:NERDTreeWinSize=50
map <C-\> :NERDTreeToggle<CR>

" <Leader>: '\'
let g:mapleader='\'
map <Leader>tn :tabnew<CR>
map <Leader>to :tabonly<CR>
map <Leader>qa :qa<CR>

" resize the current window
map < <C-w>4<
map > <C-w>4>
map + <C-w>4+
map - <C-w>4-

" commands
function! Ctags()
  let ctags = "ctags --recurse"

  echomsg ctags

  echomsg system(ctags)
endfunction
command! Ctags call Ctags(<f-args>)

function! CtagsGems()
  let ctags_gems = "ctags --recurse $(bundle list --paths)"

  echomsg ctags_gems

  echomsg system(ctags_gems)
endfunction
command! CtagsGems call CtagsGems(<f-args>)

function! FindSed(name, regexp)
  let find_sed = "find . -type f -name " . a:name . " -exec sed -i " . a:regexp . " '{}' \\;"

  echomsg find_sed

  echomsg system(find_sed)
endfunction
command! FindSed call FindSed(<f-args>)

function! RemoveSwapFiles()
  let find_delete = "find . -type f -name '*.sw[nop]' -delete"

  echomsg find_delete

  echomsg system(find_delete)
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
