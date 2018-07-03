let g:t_comment_map_leader_1 = ''

noremap <silent> <C-c> :TComment<cr>
vnoremap <silent> <C-c> :TCommentMaybeInline<cr>gv
inoremap <silent> <C-c> <c-o>:TComment<cr>
