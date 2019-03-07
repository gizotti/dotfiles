" ┌─────────────────────────────────┐
" │              PLUG               │
" └─────────────────────────────────┘

set nocompatible
filetype off

call plug#begin('~/.vim/plugged')

Plug 'ElmCast/elm-vim'
Plug 'Lokaltog/vim-easymotion'
Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
Plug 'bling/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'danro/rename.vim'
Plug 'elixir-lang/vim-elixir'
Plug 'godlygeek/tabular'
Plug 'gorkunov/smartpairs.vim'
Plug 'jambonrose/vim-jsx'
Plug 'lilydjwg/colorizer'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'pangloss/vim-javascript'
Plug 'rking/ag.vim'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-surround'
Plug 'vim-ruby/vim-ruby'
Plug 'vim-scripts/matchit.zip'
Plug 'w0rp/ale'

" Add plugins to &runtimepath
call plug#end()
