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

" Correctly define E
command! E Explor

" Font
filetype indent on
set guifont=Fira:h14

" Window switching
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" NERD Tree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" lightline
if !has('gui_running')
  set t_Co=256
endif
set runtimepath^=~/.vim/bundle/lightline.vim
set laststatus=2
let g:lightline = { 'colorscheme': 'nord' }

" Colors
syntax enable
colorscheme nord
set background=dark
let g:airline_theme='one'

" Support languages
au BufNewFile,BufRead Guardfile set filetype=ruby
au BufNewFile,BufRead Fastfile set filetype=ruby
au BufNewFile,BufRead Podfile set filetype=ruby


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

" Commenting blocks of code.
autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
autocmd FileType sh,ruby,python   let b:comment_leader = '# '
autocmd FileType conf,fstab       let b:comment_leader = '# '
autocmd FileType tex              let b:comment_leader = '% '
autocmd FileType mail             let b:comment_leader = '> '
autocmd FileType vim              let b:comment_leader = '" '
noremap <silent> ;c :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ;u :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

execute pathogen#infect()
