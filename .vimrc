" danny's lappytappy vimrc file

" ----------------------------------------
" ------------ Appearance ----------------
" ----------------------------------------
" color by syntax
syntax enable
set hlsearch
" sets the colorscheme
" colorscheme solarized
" set background=dark
"turns on line numbers
set number
" set tab prettiness
set list
set listchars=tab:\|\ 
"set tabstop=2
hi Visual ctermbg=252
" set colorcolumn=+1
" ----------------------------------------
" ------------ mouse input ---------------
" ----------------------------------------
"allows mouse point and click, without copying line numbers
se mouse+=a

" ----------------------------------------
" ---------- vim ease of use -------------
" ----------------------------------------
" this should make your tabbing slightly easier
filetype on
filetype plugin on
filetype indent on

set autoindent
set smartindent
set shiftwidth=4
set tabstop=4
" fix backspace?
set backspace=indent,eol,start
set ruler
if has("autocmd")
	au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
		\| exe "normal! g'\"" | endif
endif

" ----------------------------------------
" ------ vim to system preferences -------
" ----------------------------------------
" this allows better copying to mac system
set clipboard=unnamedplus

" ----------------------------------------
" ------ Macros to make you faster -------
" ----------------------------------------

let @l = 'bifor ( core::Size i = 1; i <= A.size(); ++i ) {}ki		'

" ----------------------------------------
" ------ vim functions -------
" ----------------------------------------
" this yeilds the compare lines function 
command! -nargs=* CL call CompareLines(<f-args>)

function! CompareLines(...)
	" Check the number of arguments
	" And get lines numbers
	if len(a:000) == 0
		let l1=line(".")
		let l2=line(".")+1
	elseif len(a:000) == 1
		let l1 =line(".")
		let l2 =a:1
	elseif len(a:000) == 2
		let l1 = a:1
		let l2 = a:2
	else
		echom "bad number of arguments"
		return;
	endif

	" Get the content of the lines
	let line1 = getline(l1)
	let line2 = getline(l2)

	let pattern = ""

	" Compare lines and create pattern of diff
	for i in range(strlen(line1))
		if strpart(line1, i, 1) != strpart(line2, i, 1)
			if pattern != ""
				let pattern = pattern . "\\|"
			endif
			let pattern = pattern . "\\%" . l1 . "l" . "\\%" . ( i+1 ) . "c"
			let pattern = pattern . "\\|" . "\\%" . l2 . "l" . "\\%" . ( i+1 ) . "c"
		endif
	endfor

	" Search and highlight the diff
	execute "let @/='" . pattern . "'"
	set hlsearch
	normal n
endfunction
" ----------------------------------------
" ------------ Appearance ----------------
" ----------------------------------------
call plug#begin('~/.local/share/nvim/plugged')
"Plug 'plugins/test_plugin'
Plug '~/git/mmtf-vim'
"Plug 'Yggdroot/indentLine'
"Plug 'nathanaelkane/vim-indent-guides'
call plug#end()
"let g:indent_guides_enable_on_vim_startup = 1
"let g:indent_guides_guide_size = 1


