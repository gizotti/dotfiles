function! OpenGemfile()
  if filereadable("Gemfile")
    execute ":vsplit Gemfile"
  end
endfunction
map <Leader>g :call OpenGemfile()<CR>

function! OpenRoutes()
  if filereadable("config/routes.rb")
    execute ":vsplit config/routes.rb"
  end
endfunction
map <Leader>r :call OpenRoutes()<CR>

function! OpenSpecHelper()
  if filereadable("spec/rails_helper.rb")
    execute ":vsplit spec/rails_helper.rb"
  end
endfunction
map <Leader>s :call OpenSpecHelper()<CR>
