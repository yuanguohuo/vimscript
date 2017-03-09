"By Yuanguo.
"Settings for filetype 'lookupfile'. The buffer opened by lookupfile plugin 
"is of 'lookupfile' filetype. The following settings allows you to close such 
"a buffer by 2 <ESC>, no matter if the buffer is in insert mode or normal mode.

"close 'lookupfile' buffer in normal mode by 2 <ESC>
nnoremap <buffer> <Esc><Esc> <C-W>q
"close 'lookupfile' buffer in insert mode by 2 <ESC>
inoremap <buffer> <Esc><Esc> <Esc><C-W>q

