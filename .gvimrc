" MacVim GUI mode
if has("gui_macvim")
  set guifont=Monaco:h13
  set guioptions=aAce
  set fuoptions=maxvert,maxhorz
  set noballooneval

  " resize current buffer by +/- 5
  nnoremap <M-Right> :vertical resize +5<CR>
  nnoremap <M-Left>  :vertical resize -5<CR>
  nnoremap <M-Up>    :resize -5<CR>
  nnoremap <M-Down>  :resize +5<CR>


  " Automatically resize splits
  " when resizing MacVim window
  autocmd VimResized * wincmd =
endif
