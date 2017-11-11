" configure.vim - Quickly configure Vim

if exists("g:loaded_configure") || &cp || v:version < 700
  finish
endif
let g:loaded_configure = 1

" edit .vimrc
nnoremap ccv :vsplit $MYVIMRC<cr>

" edit .gvimrc
nnoremap ccg :vsplit $MYGVIMRC<cr>

" source current buffer
function! SourceCurrentBuffer()
  source %
  echo "sourced"
endfunction
nnoremap css :call SourceCurrentBuffer()<CR>
