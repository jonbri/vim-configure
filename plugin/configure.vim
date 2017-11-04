" configure.vim - Quickly configure Vim

if exists("g:loaded_configure") || &cp || v:version < 700
  finish
endif
let g:loaded_configure = 1

" edit/source .vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" edit/source .gvimrc
nnoremap <leader>egv :vsplit $MYGVIMRC<cr>
nnoremap <leader>sgv :source $MYGVIMRC<cr>

" source current buffer
function! SourceCurrentBuffer()
  source %
  echo "sourced"
endfunction
nnoremap <leader>s :call SourceCurrentBuffer()<CR>
