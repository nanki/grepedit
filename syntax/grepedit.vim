function! s:syntax(name, ext)
  let l:separator = "^# ============================================================ "
  let l:ext = empty(a:ext) ? "" : "\\.".a:ext
  let l:cmd = "syntax region GEBlock".a:name
        \." matchgroup=FileLine "
        \."start=/".l:separator.".*\\v".l:ext."$/ "
        \."end=/\\(".l:separator.".*$\\)\\@=\\|\\%$/ "
        \."keepend transparent contains=FileLine"

  let l:cmd .= empty(a:name) ? "" : ",@".a:name

  execute l:cmd
endfunction

function! s:import(name, ext)
  unlet! b:current_syntax
  silent! execute "syntax include @".a:name." syntax/".a:name.".vim"
  call s:syntax(a:name, a:ext)
endfunction

function! s:autoimport()
  let autocommands = ''
  redir => autocommands
  silent autocmd BufRead
  redir END

  let i = 0
  let pattern = '\v\s\*\.(\S+)\s+setf\s(\S+)'
  let r = matchlist(autocommands, pattern, 0, i)
  while len(r) > 0
    call s:import(substitute(r[2], "\n", "", "g"), substitute(r[1], "\n", "", "g"))
    let i += 1
    let r = matchlist(autocommands, pattern, 0, i)
  endwhile
endfunction

call s:syntax("", "")

let b:ruby_no_expensive = 1
call s:import("ruby", "rb")
call s:import("css", "css")
call s:import("javascript", "js")
call s:import("java", "java")
call s:import("eruby", "(rhtml|erb)")
call s:import("html", "html")
call s:import("objc", "m")

" it's too heavy
" call s:autoimport()

highlight link FileLine Comment
