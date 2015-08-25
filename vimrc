" Common
:let mapleader = ";"
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smartindent
set autoindent
filetype indent on
set guifont=Menlo:h14

" Colors
syntax enable
set background=dark
colorscheme solarized

" Ctrlp plugin
set runtimepath^=~/.vim/bundle/ctrlp.vim
nnoremap <leader>p :CtrlP<CR>

" Ag plugin
set runtimepath^=~/.vim/bundle/ag
nnoremap <leader>s :Ag<CR>
