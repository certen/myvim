set nocompatible              " be iMproved, required
filetype off                  " required
filetype plugin on
runtime macros/matchit.vim
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
set hlsearch
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"  :PluginInstall"
" "
" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'
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
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'scrooloose/syntastic'
"improvements on the window for syntax check"
Plugin 'kien/ctrlp.vim'
Plugin 'Keithbsmiley/swift.vim'
"adds swift syntax support"
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
Bundle 'Valloric/ListToggle'
"snippet engine"
Plugin 'honza/vim-snippets'
"snippets"
Plugin 'Raimondi/delimitMate'
Plugin 'vim-scripts/javacomplete'
"java completion"
Plugin 'tpope/vim-surround'
"simple note
Plugin 'maxbrunsfeld/vim-yankstack'
"A lightweight implementation of emacs's kill-ring for vim"
Plugin 'edsono/vim-matchit'
"
"
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
" autochdir helps for filename completion"j
set autochdir
"markdown settings"
let g:vim_markdown_frontmatter=1
"ctrl p map file search
let g:ctrlp_working_path_mode = 2
let g:ctrlp_by_filename = 1
let g:ctrlp_max_files = 600
let g:ctrlp_max_depth = 5
""
"" Syntastic
""
" You can see syntastic's idea of available checkers by running :SyntasticInfo
" " See wiki for supported checkers:

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" " https://github.com/scrooloose/syntastic/wiki/Syntax-Checkers
"
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = { 'mode': 'passive' }
" CtrlP
let g:ctrlp_working_path_mode = 2
let g:ctrlp_by_filename = 1
let g:ctrlp_max_files = 600
let g:ctrlp_max_depth = 5


"you completeme settings"
let g:ycm_confirm_extra_conf = 0
let g:syntastic_always_populate_loc_list = 1
let g:ycm_collect_identifiers_from_tags_files = 1
set tags+=./.tags

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
autocmd BufNewFile,BufRead *.swift setfiletype swift
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"
" " If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
"Disable arrows and replace with resize window
nnoremap <left> :vertical resize +5<cr> 
nnoremap <right> :vertical resize -5<cr>
nnoremap <up> :resize +5<cr>
nnoremap <down> :resize -5<cr>
"buffer management with tab
" Switch to alternate file
map <C-J> :bnext<CR>
map <C-K> :bprev<CR>
map <C-L> :tabn<CR>
map <C-H> :tabp<CR>

" Local config
 if filereadable($HOME . "/.vimrc.local")
   source ~/.vimrc.local
endif

" Auto close vim if nerdtree last buffer left
autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()
function! s:CloseIfOnlyNerdTreeLeft()
	  if exists("t:NERDTreeBufName")
	  	      if bufwinnr(t:NERDTreeBufName) != -1
	  	      	            if winnr("$") == 1
	  	      	            	            q
	  	      	            	                  endif
	  	      	            	                      endif
	  	      	            	                        endif
							endfunction
autocmd VimEnter * NERDTree
