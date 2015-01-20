" MacVim GUI mode
if has("gui_macvim")
  set guifont=Monaco:h13
  set guioptions=aAce
  set fuoptions=maxvert,maxhorz
  set noballooneval




  " Automatically resize splits
  " when resizing MacVim window
  autocmd VimResized * wincmd =
endif
