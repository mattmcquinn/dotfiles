" enable cool vim things
set nocompatible
" begin vundle stuff
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
" end vundle stuff

" reduce escape delay
set timeoutlen=1000 ttimeoutlen=0
" show trailing whitespace
set list listchars=tab:»·,trail:·,nbsp:·
" show possible completions
set wildmenu
" backspace fix
set backspace=2
" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed
" always show status line
set laststatus=2
" do incremental searching
set incsearch
" automaticall :write before running commands
set autowrite

filetype plugin indent on
" show cursor at all times
set ruler
" display incomplete commands
set showcmd
" syntax highlighting on
syntax on

" solarized colorscheme stuff
set background=dark
let g:solarized_termtrans=1
colorscheme solarized
" make current line number red
hi cursorlinenr ctermfg=red
" enable powerline font for statusline
let g:airline_powerline_fonts=1
" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
" column width of 80
set textwidth=80
set colorcolumn=+1
" display line numbers, width 4
set number
set numberwidth=4

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag -Q -l --nocolor --hidden -g "" %s'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright
" relative line numbers when in focus
:au FocusLost * :set number
:au FocusGained * :set relativenumber
" absolute line numbers in insert mode
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber
" Change cursor type based on mode
if &term == 'xterm-256color' || &term == 'screen-256color'
  let &t_SI = "\<Esc>[5 q"
  let &t_EI = "\<Esc>[1 q"
endif
