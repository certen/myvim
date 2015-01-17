set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
"tabular and markdown needed for markdown editing"
Plugin 'scrooloose/NERDTree'
Plugin 'scrooloose/NERDCommenter'
Plugin 'scrooloose/syntastic'
"improvements on the window for syntax check"
Plugin 'kien/ctrlp.vim'
"fuzzy search"
Plugin 'bling/vim-airline'
"light status bar"
Plugin 'airblade/vim-gitgutter'
"git gutter"
Plugin 'majutsushi/tagbar'
"class outliner requires exuberant ctags"
Plugin 'marijnh/tern_for_vim'
"javascript processor"
Plugin 'maksimr/vim-jsbeautify'
Plugin 'einars/js-beautify'
"Js beautify"
Plugin 'Valloric/YouCompleteMe'
"auto complete"
Bundle 'Valloric/ListToggle'
Plugin 'SirVer/ultisnips' 
"snippet engine"
Plugin 'honza/vim-snippets'
"snippets"
Plugin 'Raimondi/delimitMate'
Plugin 'hsanson/vim-android'
"android development"
Plugin 'vim-scripts/javacomplete'
"java completion"

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
set nowrap
set ignorecase
set smartcase
set nu
set autoindent
set vb
syntax on
set nobackup      "no backup files
"set nowritebackup  #only in case you don't want a backup file while editing
set noswapfile     "no swap files
set omnifunc=syntaxcomplete#Complete 
" Allows you to have multiple buffers open
set hidden
" Copy the indentation of the previous line if auto indent doesn't know what to do
set copyindent
" Vim can set the title of the terminal window
set title

"markdown settings"
let g:vim_markdown_frontmatter=1

"syntastic settings"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = { 'mode': 'passive' }

" CtrlP
nnoremap <silent> t :CtrlP<cr>
let g:ctrlp_working_path_mode = 2
let g:ctrlp_by_filename = 1
let g:ctrlp_max_files = 600
let g:ctrlp_max_depth = 5

"markdown file settings"
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile *.txt set filetype=markdown
autocmd BufNewFile,BufRead *.less set filetype=less
autocmd BufRead,BufNewFile *.js set ft=javascript syntax=javascript
autocmd BufRead,BufNewFile *.json set ft=json syntax=javascript

autocmd FileType javascript setlocal omnifunc=tern#Complete
"from neo
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags


" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"
" " If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

autocmd VimEnter * NERDTree
