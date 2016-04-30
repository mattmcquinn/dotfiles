set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'ervandew/supertab'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-surround'
Bundle 'altercation/vim-colors-solarized'


set backspace=2
set incsearch
set autowrite
filetype plugin indent on
set background=dark
set ruler 		" show cursor at all times
set showcmd 		" display incomplete commands
syntax on
set background=dark
let g:solarized_termtrans=1
colorscheme solarized

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
" column width of 80
set textwidth=80
set colorcolumn=+1
set number
set numberwidth=5

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright
" relative line numbers when in focus
:au FocusLost * :set number
:au FocusGained * :set relativenumber
" absolute line numbers in insert mode
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber
