" Vim color file
" Maintainer:	bogdanvlviv (Bogdan) <bogdanvlviv@gmail.com>
" Last Change:	September 21, 2016

" This is the default color scheme. It doesn't define the Normal
" highlighting, it uses whatever the colors used to be.

" Set 'background' back to the default. The value can't always be estimated
" and is then guessed.
hi clear Normal
set bg&

" Remove all existing highlighting and set the defaults.
hi clear

" Load the syntax highlighting defaults, if it's enabled.
if exists("syntax_on")
  syntax reset
endif

" vim: sw=2

" default256

let g:colors_name="default256"

set t_Co=256

hi Boolean ctermfg=141 ctermbg=NONE
hi ColorColumn ctermfg=NONE ctermbg=236
hi Comment ctermfg=59 ctermbg=NONE
hi CursorColumn ctermfg=NONE ctermbg=236
hi CursorLine ctermfg=NONE ctermbg=236
hi LineNr ctermfg=15 ctermbg=234
hi Number ctermfg=141 ctermbg=NONE
hi Statement ctermfg=1 ctermbg=NONE
hi String ctermfg=186 ctermbg=NONE
hi Title ctermfg=231 ctermbg=NONE

hi rubySymbol ctermfg=141 ctermbg=NONE
