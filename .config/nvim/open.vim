let extension = expand('%:e')

"if &filetype ==# 'py'
"  autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
"  autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
"endif
if extension=='py'
  imap <F5> <Esc>:w<CR>:!python3 %<CR>
  map <F5> <Esc>:w<CR>:!python3 %<CR>
"  imap <F5> <Esc>:w<CR>:!clear;python3 %<CR>
"  map <F5> <Esc>:w<CR>:!clear;python3 %<CR>
elseif extension=='ino'
  imap <F5> <Esc>:w<CR>:!clear;make compile %<CR>
  map <F5> <Esc>:w<CR>:!clear;make compile %<CR>
  imap <F6> <Esc>:w<CR>:!clear;make upload %<CR>
  map <F6> <Esc>:w<CR>:!clear;make upload %<CR>
elseif extension=='c'
  imap <F5> <Esc>:w<CR>:!clear;make clean;make compile<CR>
  map <F5> <Esc>:w<CR>:!clear;make clean;make compile<CR>
  imap <F6> <Esc>:w<CR>:!clear;make clean;make compile;make upload<CR>
  map <F6> <Esc>:w<CR>:!clear;make clean;make compile;make upload<CR>
endif

