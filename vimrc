set nocompatible
set lazyredraw
set ttyfast
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-sleuth'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
" nerd tree remaps
map <C-n> :NERDTreeToggle<CR>
map <C-h> :tabp<CR>
map <C-l> :tabn<CR>
" format JSON
map <C-j> :$!python -mjson.tool<CR>
call vundle#end()
filetype plugin indent on
colorscheme Tomorrow-Night
syntax on
set hlsearch
set nu
set smartcase
set list
set ruler
set listchars=tab:▸\ ,trail:▫
au BufNewFile,BufRead *.sql.jinja set filetype=sql
au BufNewFile,BufRead *.swigql set filetype=sql

" set syntax checkers
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1

" need either macvim or --with-client-server from normal vim overridden via
" brew to use this feature
if has("clipboard")
  set clipboard=unnamed " copy to the system clipboard
  if has("unnamedplus") " X11 support
    set clipboard+=unnamedplus
  endif
endif
