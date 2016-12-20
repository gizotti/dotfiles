"Neomake
autocmd! BufWritePost * Neomake

let g:neomake_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]
let g:neomake_mode_map={ 'mode': 'active',
                         \ 'active_filetypes': ['ruby', 'javascript'],
                         \ 'passive_filetypes': ['html'] }
let g:loaded_neomake_cucumber_cucumber_maker = 0
let g:neomake_always_populate_loc_list=1
let g:neomake_error_symbol='✗'
let g:neomake_warning_symbol='⚠'
let g:neomake_style_error_symbol = '✗'
let g:neomake_style_warning_symbol = '⚠'
let g:neomake_aggregate_errors = 1
let g:neomake_javascript_makers = ['eslint']
let g:neomake_javascript_eslint_exec = '/Users/gabrielgizotti/.nvm/versions/node/v5.12.0/bin/eslint'
let g:neomake_ruby_makers = ['mri', 'rubocop']
let g:neomake_elixir_makers = ['mix']
