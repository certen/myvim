set termguicolors

nnoremap <A-j> :m+<CR>==
nnoremap <A-k> :m-2<CR>==
inoremap <A-j> <Esc>:m+<CR>==gi
inoremap <A-k> <Esc>:m-2<CR>==gi
vnoremap <A-k> :m '<-2<CR>gv=gv
vnoremap <A-j> :m '>+<CR>gv=gv

vnoremap <leader>p "_dP
vnoremap <leader>y "+y

nnoremap <leader>y "+y
nnoremap <leader>p "+p
nnoremap <leader>Y gg"+yG

