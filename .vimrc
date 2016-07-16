" danny's vimrc file

" ----------------------------------------
" ------------ Appearance ----------------
" ----------------------------------------
" color by syntax
syntax enable
" sets the colorscheme
colorscheme solarized
set background=dark
"turns on line numbers
set number
" set tab prettiness
set list
set listchars=tab:\|\ 
set tabstop=2
set textwidth=120
set colorcolumn=+1
" ----------------------------------------
" ------------ mouse input ---------------
" ----------------------------------------
"allows mouse point and click, without copying line numbers
se mouse+=a

" ----------------------------------------
" ---------- vim ease of use -------------
" ----------------------------------------
" this should make your tabbing slightly easier
set autoindent
set smartindent
" fix backspace?
set backspace=indent,eol,start
set ruler

" ----------------------------------------
" ------ vim to system preferences -------
" ----------------------------------------
" this allows better copying to mac system
set clipboard+=unnamed

