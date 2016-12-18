" ┌─────────────────────────────────┐
" │              PLUG               │
" └─────────────────────────────────┘

set nocompatible
filetype off

call plug#begin('~/.vim/plugged')

Plug 'Lokaltog/vim-easymotion'
Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
Plug 'bling/vim-airline'
Plug 'ck3g/vim-change-hash-syntax'
Plug 'danro/rename.vim'
Plug 'godlygeek/tabular'
Plug 'gorkunov/smartpairs.vim'
Plug 'jreybert/vimagit'
Plug 'kchmck/vim-coffee-script'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'lilydjwg/colorizer'
Plug 'msanders/snipmate.vim'
Plug 'neomake/neomake'
Plug 'pangloss/vim-javascript'
Plug 'rking/ag.vim'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-haml'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rvm'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/matchit.zip'
Plug 'tomtom/tcomment_vim'

" Add plugins to &runtimepath
call plug#end()
