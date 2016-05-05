set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ervandew/supertab'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-rails'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
call vundle#end()
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
let g:airline_powerline_fonts=1
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
