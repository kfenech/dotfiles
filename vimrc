" automatic reloading of .vimrc
autocmd! bufwritepost vimrc source %

"make backspace normal
set bs=2

" rebind <leader> key
let mapleader=","

" remove highlighting from last search 
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

" bind ctrl+<movement> key to move around windows
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" map sort function to a key
vnoremap <Leader>s :sort<CR>

"easier moving of code blocks
vnoremap < <gv
vnoremap > >gv

syntax on	" turn on syntax highlighting
set number " turn on line numbers
set tw=79

" code folding 
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

" python dev adjustments
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set columns=80
set lines=40
set colorcolumn=80

" easier formating of paragraphs
vmap Q gq
nmap Q gqap

"make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" Disable backup and swapfiles
set nobackup
set nowritebackup
set noswapfile

set nocompatible
filetype off

" include vundle on path
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" let Vundle manage vundle
" required!
Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-fugitive'     " git in vim

Plugin 'kien/ctrlp.vim'         " file explorer

Plugin 'scrooloose/syntastic'   " syntax checking

Plugin 'Valloric/YouCompleteMe' " Code completion

call vundle#end()	"required


filetype on
filetype plugin indent on


