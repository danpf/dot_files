" danny's lappytappy vimrc file

" ----------------------------------------
" ------------ Appearance ----------------
" ----------------------------------------
" color by syntax
syntax enable
set hlsearch
" 256 color on
set t_Co=256
" colorscheme
hi Visual ctermbg=249
hi Visual ctermfg=0
"turns on line numbers
set number
" set tab prettiness
set list
set listchars=tab:\|\ 
set tabstop=2
" sets highlight on search
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
set shiftwidth=2
" fix backspace?
set backspace=indent,eol,start
set ruler
" this will make 'member where you were last time you opened file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
" ----------------------------------------
" ------ vim to system preferences -------
" ----------------------------------------
" this allows better copying to mac system
set clipboard=unnamed

