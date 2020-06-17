" syntax on

set notermguicolors t_Co=16

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

" set colorcolumn=80
" highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/etc/nvim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'noahfrederick/vim-noctu'

call plug#end()

colorscheme noctu
