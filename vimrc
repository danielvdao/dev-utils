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
map <C-n> :NERDTreeToggle<CR>
map <C-h> :tabp<CR>
map <C-l> :tabn<CR>
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
set clipboard=unnamed
au BufNewFile,BufRead *.sql.jinja set filetype=sql
au BufNewFile,BufRead *.swigql set filetype=sql
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
