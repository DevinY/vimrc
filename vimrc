"Unix 或 Linux 及MacOS透過curl安裝vim-plug外掛
"curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
set fileencodings=utf-8,gb2312,big5
hi clear
if exists("syntax_on")
syntax reset
syntax on
endif
filetype indent plugin on
lang message zh_TW.utf-8
set nocompatible
set nrformats=
set showcmd
set number
set ts=4
set sw=4
set bs=2
set nopaste
set ai
"分割視窗的邊框字型，預設是|
"set fillchars+=vert:█
hi VertSplit guifg=red guibg=bg
"set foldmethod=manual
set splitbelow
set splitright



"Make Vim completion popup menu work just like in an IDE
set completeopt=longest,menuone
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

set t_Co=256
set tabpagemax=200
set ignorecase "搜尋不分大小寫
set incsearch "增量搜尋
set clipboard=unnamed
set gfn=Monaco:h16
set guioptions-=T "移除上方工具列
set guioptions-=r "移除右邊捲軸
set go-=L "移除左手邊捲軸
set mouse=r "在vim裡面用滑鼠
"set ttymouse=xterm2
set foldcolumn=0
set expandtab
set shiftwidth=4  " number of spaces to use for autoindenting
set scrolljump=5
set hlsearch  "保留搜尋的高亮
"hi Normal ctermfg=grey ctermbg=black
hi Normal ctermfg=grey 
hi LineNr ctermfg=222 ctermbg=black
hi Search ctermfg=222 ctermbg=Yellow cterm=bold,underline
hi ErrorMsg guibg=White guifg=Red


"單行的上下行
nnoremap j gj
nnoremap k gk

let mapleader=","
"====LEADER Key的設定
"檢易開檔，例如: include("config.php");
nnoremap <Leader>o ^/['"]<CR>l<C-w>gf
"Ctags + Ctrlp
"let you search through your tags file and jump to where tags are defined.
nmap <leader>. :CtrlPTag<cr>

"syntatstic 語法確認的外掛。
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
let g:syntastic_shell_checkers = ['bash', 'sh']

"保留搜尋結果
nnoremap <F12> :set hlsearch!<CR>
"用, h清除搜尋的高亮
nnoremap <leader>h :let @/ = ""<CR>
"Tagbar熱鍵
nnoremap <silent><Leader>b :TagbarToggle<CR>

"Showmarks，用, c清除所有的Mark
nnoremap <silent><Leader>c :ShowMarksClearAll<CR>


"移除搜尋結果
command! H let @/=""


"vim-gitgutter
let g:gitgutter_sign_column_always = 1
let g:gitgutter_override_sign_column_highlight = 0
"預設停用gitgutter
let g:gitgutter_signs = 0




let g:cssColorVimDoNotMessMyUpdatetime = 1


augroup vimrc
	au BufReadPre * setlocal foldmethod=indent
	au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
augroup END


"返回normal model
imap jj <esc>

"到目前目錄
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>


silent! call plug#begin('~/.vim/plugged')
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
Plug 'majutsushi/tagbar'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline-themes'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/SearchComplete'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-scripts/ShowMarks'
Plug 'ervandew/supertab'
"Plug 'msanders/snipmate.vim' "snipMate.vim aims to be a concise vim script that implements some of TextMate's snippets features in Vim.
Plug 'DataWraith/auto_mkdir' " Vim plugin that allows you to save files into directories that do not exist yet.
Plug 'jwalton512/vim-blade' "Vim syntax highlighting for Blade templates.
Plug 'tobyS/vmustache'      
Plug 'tobyS/pdv'            "pdv需有上方的vmustache"
Plug 'SirVer/ultisnips'

call plug#end()

"CtrlP
let g:ctrlp_custom_ignore = 'node_modules\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'



"Commands                        Mode
"--------                        ----
"nmap, nnoremap, nunmap          Normal mode
"imap, inoremap, iunmap          Insert and Replace mode
"vmap, vnoremap, vunmap          Visual and Select mode
"xmap, xnoremap, xunmap          Visual mode
"smap, snoremap, sunmap          Select mode
"cmap, cnoremap, cunmap          Command-line mode
"omap, onoremap, ounmap          Operator pending mode


"emmet-vim
"html:5_ (Ctrl+y an,)

"pdv
let g:pdv_template_dir = $HOME ."/.vim/plugged/pdv/templates_snip"
nnoremap <leader>d :call pdv#DocumentWithSnip()<CR>

"UltiSnips
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"


"用F2進入張貼模式
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>


"把ctags建立的檔案存到./vim/tags中，防止被外面的人存取
"ctags --tag-relative=yes -R -f ~/.vim/tags .
set tags+=~/.vim/tags
"用F3 rebuild ctags
map <F3> :! ctags --exclude=.git --php-kinds=+cdfi --languages=-javascript,sql --recurse --tag-relative=yes -R -f ~/.vim/tags .<CR>


"用空白重覆執行巨集
nnoremap <Space> @q

":resize +5 (可垂直加五行或減五行)
"nmap <C-A-v> :vertical resize +5 <cr>
map <Up> :res +5<CR> "調整分割視視窗上下
map <Down> :res -5<CR> "調整分割視窗大小
map <C-j> <C-w>5>
map <C-k> <C-w>5<



"用Ctrl+l及Ctrl+h在不同的標標移動
map  <C-l> :tabn<CR><C-w>l
map  <C-h> :tabp<CR><C-w>h

"Shift的hjkl移動normal mode視窗移動
nmap <leader>h <C-w>h
nmap <leader>j <C-w>j
nmap <leader>k <C-w>k
nmap <leader>l <C-w>l
"大寫的H跟Vim的熱鍵有衝突，改用leader h
"nmap <S-h> <C-w>h
"nmap <S-j> <C-w>j
"nmap <S-k> <C-w>k
"nmap <S-l> <C-w>l



"NERDTree熱鍵
nmap <silent> <C-N> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen = 1
let NERDTreeHijackNetrw = 0
let NERDTreeShowLineNumbers= 1 "NERDTree顯示行號"


"重載~/.vimrc設定
nnoremap <F5> :source ~/.vimrc<CR>

nmap <F8> :ShowMarksToggle<CR>
let g:showmarks_include="abcdef"
"用leader kye，我的設定是,來開關，用:h Showmarks看說明
",mt : Toggles ShowMarks on and off.
",mh : Hides an individual mark.
",ma : Hides all marks in the current buffer.
",mm : Places the next available mark.



"===控制滑鼠的模式
function! ToggleMouse(...)
	if &mouse == 'a'
		set mouse=
	else
		set mouse=a
	endif
endfunc
"滑鼠模式。
map <silent><Leader>m :call ToggleMouse()<CR>


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


"遊標F10自動高亮
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
map ,/ :call ToggleCursorMoved(1)<CR>
"自動檢測
autocmd! BufWritePost .vimrc source %

"autocmd CursorMoved * call ToggleCursorMoved()

"vim-airline
let g:airline_theme='papercolor'
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
set laststatus=2
let g:airline_powerline_fonts = 1
" old vim-powerline symbols
"let g:airline_left_sep = '⮀'
"let g:airline_left_alt_sep = '⮁'
"let g:airline_right_sep = '⮂'
"let g:airline_right_alt_sep = '⮃'
"let g:airline_symbols.branch = '⭠'
"let g:airline_symbols.readonly = '⭤'
"let g:airline_symbols.linenr = '⭡'

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
"autocmd FileType php set omnifunc=phpcomplete#CompletePHP
"autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"
" Enable heavy omni completion.
"if !exists('g:neocomplcache_force_omni_patterns')
"	let g:neocomplcache_force_omni_patterns = {}
"endif
"let g:neocomplcache_force_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplcache_force_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplcache_force_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
"let g:neocomplcache_force_omni_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

set background=dark
let g:solarized_termcolors=256
colorscheme molokai

"設定Macvim GUI的字型
set guifont=Source\ Code\ Pro\ for\ Powerline:h16
"MacVim的行高設定
set linespace=3
