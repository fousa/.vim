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

" Window switching
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Colors
syntax enable
set background=dark
colorscheme solarized

" Ctrlp plugin
set runtimepath^=~/.vim/bundle/ctrlp.vim
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
nnoremap <leader>p :CtrlP<CR>
nnoremap <leader>b :CtrlPBuffer<CR>

" Ag plugin
set runtimepath^=~/.vim/bundle/ag
nnoremap <leader>s :Ag<CR>

" FZF
set runtimepath^=~/.fzf
nnoremap <leader>f :FZF<CR>
