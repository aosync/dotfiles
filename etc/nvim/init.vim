" Do not use more than 16 colors (ideally)
set notermguicolors t_Co=16

" No error bells duh
set noerrorbells

set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent
"set nu
"set rnu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/etc/nvim/undodir
set undofile
set incsearch

"colorscheme aosync

""" KEYBINDS
	" The hard way
		nmap <Up> <Nop>
		nmap <Down> <Nop>
		nmap <Left> <Nop>
		nmap <Right> <Nop>

	" Center
		nnoremap j jzz
		nnoremap k kzz
	
	" Switching between windows
		nnoremap <C-Right>	 :vsplit 
		nnoremap <C-Left>	 :Vex<CR>
		nnoremap <C-Down>	 :split 
		nnoremap <C-Up>		 :Sex<CR>
		nnoremap <C-e>		 :E<CR>
		nnoremap <Up>	     <C-w>5-
		nnoremap <Down>      <C-w>5+
		nnoremap <Left>      <C-w>10<
		nnoremap <Right>     <C-w>10>
		nnoremap <C-h>	     <C-w><Left>
		nnoremap <C-k>	     <C-w><Up>
		nnoremap <C-j>	     <C-w><Down>
		nnoremap <C-l>	     <C-w><Right>
	
	" Close things that should be closed
		inoremap (			()<Left>
		inoremap [			[]<Left>
		inoremap {<CR>		{}<Left><CR><Esc>O
		inoremap {}			{}<Left>
		inoremap "			""<Left>
		inoremap '<Space>	''<Left>

" status line, based on gk's, themselves based on lena's
set noshowmode
set laststatus=2
syntax on

hi Sl1 ctermfg=12   cterm=none ctermbg=none
hi Sl2 ctermfg=7    cterm=none ctermbg=none
hi Sl3 ctermfg=8    cterm=none ctermbg=none
hi Slrese ctermfg=none cterm=none ctermbg=none
function! RedrawMode(mode)
	" Normal mode
	if a:mode == 'n'
		return 'nor'
	" Insert mode
	elseif a:mode == 'i'
		return 'ins'
	elseif a:mode == 'R'
		return 'rep'
	" Visual mode
	elseif a:mode == 'v' || a:mode == 'V' || a:mode == '^V'
		return 'sel'
	" Command mode
	elseif a:mode == 'c'
		return 'cmd'
	" Terminal mode
	elseif a:mode == 't'
		return 'trm'
	endif
	return ''
endfunction


function! SetModifiedSymbol(modified)
	if a:modified == 1
		return '[*]'
	else
		return ''
	endif
endfunction

" Mode
set statusline=%#Slrese#\ %{RedrawMode(mode())}\ %#Sl1#

" Is file editted?
set statusline+=%#Sl3#%{SetModifiedSymbol(&modified)}
set statusline+=%#SlRese#

" Right
set statusline+=%=

" File name
set statusline+=%#Sl2#\ %.20t\ 
set statusline+=%#Sl1#\|

" Cursor position
set statusline+=\%#Sl2#\ %l,%c

""" Language things
au BufWritePost *.go :silent execute "!gofmt -w %" | :e
au BufWritePost *.ms :silent execute "!./typeset.sh %"
au BufWritePost *.tr :silent execute "!./typeset.sh %"
au BufWritePost *.troff :silent execute "!./typeset.sh %"


call plug#begin('~/usr/nvim/plugged')

Plug 'Gavinok/vim-troff'

call plug#end()
