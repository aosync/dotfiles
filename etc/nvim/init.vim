syntax on

" Do not use more than 16 colors (ideally)
set notermguicolors t_Co=16

" No error bells duh
set noerrorbells

set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent
set nu
set rnu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/etc/nvim/undodir
set undofile
set incsearch


call plug#begin('~/etc/nvim/plugged')

Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'tpope/vim-fugitive'

call plug#end()

""" KEYBINDS
	" The hard way
		nmap <Up> <Nop>
		nmap <Down> <Nop>
		nmap <Left> <Nop>
		nmap <Right> <Nop>
	
	" Switching between windows
		nnoremap <C-Right>	 :vsplit 
		nnoremap <C-Left>	 :Vex<CR>
		nnoremap <C-Down>	 :split 
		nnoremap <C-Up>		 :Sex<CR>
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
		inoremap <<Space>	<><Left>
		inoremap {<CR>		{}<Left><CR><Esc>O
		inoremap {}			{}<Left>
		inoremap "			""<Left>
		inoremap '<Space>	''<Left>

	" CoC stuff
		" CoC completion
			inoremap <silent><expr> <TAB>
						\ pumvisible() ? "\<C-n>" : 
						\ <SID>check_back_space() ? "\<TAB>" :
						\ coc#refresh()
			inoremap <expr><S-Tab> pumvisible() ? "\<C-p>" : "\<C-h>"

		" CoC definitions and cool code things
			nmap <silent> gd <Plug>(coc-definition)
			nmap <silent> gy <Plug>(coc-type-definition)
			nmap <silent> gi <Plug>(coc-type-implementation)
			nmap <silent> gr <Plug>(coc-references)

		" CoC utils
		function! s:check_back_space() abort
			let col = col('.') - 1
			return !col || getline('.')[col - 1] =~# '\s'
		endfunction
