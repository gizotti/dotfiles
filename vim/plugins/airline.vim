" vim-airline
set laststatus=2
let g:airline_powerline_fonts = 1
" let g:airline_section_b = '%{rbenv#statusline()} | %{airline#extensions#hunks#get_hunks()}'
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
