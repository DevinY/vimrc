"Unix 或 Linux 及MacOS透過curl安裝vim-plug外掛
"curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
set fileencodings=utf-8,gb2312,big5
syntax reset
syntax on
filetype indent plugin on
lang message zh_TW.utf-8
set nrformats=
set showcmd
set number
set ts=4
set sw=4
set bs=2
set nopaste
set ai
set foldmethod=indent
set completeopt=menu
set t_Co=256
set tabpagemax=200
set ignorecase "搜尋不分大小寫
set incsearch
set clipboard=unnamed
set gfn=Monaco:h16
set guioptions-=T "移除上方工具列
set guioptions-=r "移除右邊捲軸
set go-=L "移除左手邊捲軸
set mouse=a
"把ctags建立的檔案存到./vim/tags中，防止被外面的人存取
"ctags --tag-relative=yes -R -f ~/.vim/tags . 
set tags+=~/.vim/tags
hi Search ctermfg=Yellow ctermbg=NONE cterm=bold,underline

"單行的上下行
nnoremap j gj 
nnoremap k gk

"移除搜尋結果
command! H let @/=""

let mapleader=","
let g:cssColorVimDoNotMessMyUpdatetime = 1


"返回normal model
imap jj <esc>

"到目前目錄
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>


call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/syntastic'
Plug 'bling/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'Shougo/neocomplcache.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'spf13/vim-colors'
Plug 'moll/vim-node'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'skammer/vim-css-color'
call plug#end()

"用F2進入張貼模式
nnoremap <F2> :set invpaste paste?<CR>

"用空白重覆執行巨集
nnoremap <Space> @q


":resize +5 (可垂直加五行或減五行)
"nmap <C-A-v> :vertical resize +5 <cr>
nmap <C-k> <C-w>5>
nmap <C-j> <C-w>5<

"Shift的hjkl移動normal mode視窗移動
nmap <S-h> <C-w>h
nmap <S-j> <C-w>j
nmap <S-k> <C-w>k
nmap <S-l> <C-w>l

"用Ctrl+l及Ctrl+h在不同的標標移動
map  <C-l> :tabn<CR><C-w>l
map  <C-h> :tabp<CR><C-w>h


"NERDTree熱鍵
nmap <silent> <C-N> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen = 1

"重載~/.vimrc設定
nnoremap <F5> :source ~/.vimrc<CR>

"=====F9標記高亮所有搜尋結果=====
let g:toggleHighlight = 1
function! ToggleHighlight(...)
  if a:0 == 1 "toggle behaviour
    let g:toggleHighlight = 1 - g:toggleHighlight
  endif
  if g:toggleHighlight == 0 "normal action, do the hi
	silent! exe printf('match IncSearch /\V\<%s\>/', escape(expand("<cword>"), "/\'"))
  else
	call  clearmatches()
  endif
endfunction

"高亮最後搜尋的文字
map <f9> :call ToggleHighlight(1)<CR>

"F10自動高亮
let g:toggleCursorMoved = 1
function! ToggleCursorMoved(...)
  if a:0 == 1 "toggle behaviour
    let g:toggleCursorMoved = 1 - g:toggleCursorMoved
	au! CursorMoved
  endif
  if g:toggleCursorMoved == 0 "normal action, do the hi
	  autocmd CursorMoved * silent! exe printf('match Search /\<%s\>/', expand('<cword>'))
  else
	call  clearmatches()
  endif
endfunction

"nmap <f10> :autocmd CursorMoved * silent! exe printf('match Search /\<%s\>/', expand('<cword>'))<cr>
map <f10> :call ToggleCursorMoved(1)<CR>
"autocmd CursorMoved * call ToggleHighlight()

"vim-airline
let g:airline_theme='papercolor'
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
" old vim-powerline symbols
set laststatus=2
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'
let g:airline_symbols.linenr = '⭡'

"neocomplcache
"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Enable heavy features.
" Use camel case completion.
"let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
"let g:neocomplcache_enable_underbar_completion = 1

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplcache#smart_close_popup() . "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

" Enable omni completion.
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS

" Enable heavy omni completion.
if !exists('g:neocomplcache_force_omni_patterns')
  let g:neocomplcache_force_omni_patterns = {}
endif
let g:neocomplcache_force_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_force_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplcache_force_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

let g:neocomplcache_force_omni_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme molokai
