imap fd <ESC>
map ; :
set clipboard+=unnamedplus
set number
set relativenumber
let mapleader = ","
nmap <leader>w :w!<cr>

" :W sudo saves the file
" (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null
set lazyredraw
syntax enable
