" PEP 8 formatting
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal shiftround
setlocal autoindent

" folding
setlocal foldmethod=indent
setlocal foldlevel=99

" run shortcut
setlocal makeprg=./%

au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>79v.\+', -1)

inoremap <F3> """"""<Esc>hhha
nnoremap <F7> Obreakpoint()<Esc>
nnoremap <F19> Oif :<CR>breakpoint()<Esc>ki

map <buffer> <F8> :call flake8#Flake8()<CR>
