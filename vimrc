" Common
:let mapleader = ";"
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smartindent
set autoindent

set ruler
set number
set directory-=.
set autoread
set encoding=utf-8
set ignorecase
set list
set listchars=tab:▸\ ,trail:▫
set scrolloff=3
set smartcase
set wildmenu
set wildmode=longest,list,full
set hidden

" Font
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

" Removes trailing spaces
function! TrimWhiteSpace()
    %s/\s\+$//e
endfunction
nnoremap <silent> <Leader>w :call TrimWhiteSpace()<CR>
