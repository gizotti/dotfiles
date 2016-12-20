" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_use_caching = 1
let g:ctrlp_max_files = 0
let g:ctrlp_working_path_mode = 2
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.orig
let g:ctrlp_custom_ignore = {
  \ 'dir': '\.git$\|\.hg$\|\.svn$\|node_modules\|deps\|_build',
  \ }
