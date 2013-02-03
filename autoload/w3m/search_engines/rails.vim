" File: autoload/w3m/search_engines/rails.vim
" Last Modified:  03.02.2013
" Version: 1.0
" Author: rubytree (@rubytree)

let s:engine = w3m#search_engine#Init('rails', 'http://apidock.com/rails/search?query=%s&commit=Search')

function! s:engine.preproc()
  "for example. Change user-agent.
  let s:user_agent_backup = g:user_agent
  call w3m#SetUserAgent('Chrome', 0)
endfunction

function! s:engine.postproc()
  "for example. Undo user-agent.
  let g:user_agent = s:user_agent_backup
  unlet s:user_agent_backup
endfunction

call w3m#search_engine#Add(s:engine)
