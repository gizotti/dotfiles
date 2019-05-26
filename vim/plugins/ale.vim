let g:ale_linters_explicit = 1
let g:ale_sign_column_always = 1

let g:ale_linters = {
      \'ruby': ['ruby', 'rubocop'],
      \}

let g:ale_fix_on_save = 1

let g:ale_sign_error = '✗✗'
let g:ale_sign_warning = '⚠⚠'

let g:ale_completion_enabled = 1

highlight clear ALEErrorSign
highlight clear ALEWarningSign

let g:airline#extensions#ale#enabled = 1

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

let g:ale_ruby_rubocop_executable = 'bundle'
