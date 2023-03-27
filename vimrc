set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" appearance.vundle
Bundle 'chrisbra/color_highlight.git'
Bundle 'flazz/vim-colorschemes'
Bundle 'itchyny/lightline.vim'
" Required for Gblame in terminal vim
Bundle 'godlygeek/csapprox.git'

" git.vundle
Bundle 'gregsexton/gitv'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-git'
Bundle 'airblade/vim-gitgutter'

" languages.vundle
Bundle 'sheerun/vim-polyglot'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate.git'
Bundle 'mattn/emmet-vim'
Bundle 'honza/vim-snippets'
Bundle 'scrooloose/syntastic.git'
Bundle 'mxw/vim-jsx'
Bundle 'pangloss/vim-javascript'
Bundle 'robbles/logstash.vim'
Bundle 'broadinstitute/vim-wdl'

" project.vundle
Bundle 'jistr/vim-nerdtree-tabs.git'
Bundle 'scrooloose/nerdtree.git'
Bundle 'ctrlpvim/ctrlp.vim'
Bundle 'xolox/vim-misc'

" ruby.vundle
Bundle 'ecomba/vim-ruby-refactoring'
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-rake.git'
Bundle 'vim-ruby/vim-ruby.git'
Bundle 'keith/rspec.vim'
Bundle 'ck3g/vim-change-hash-syntax'

" search.vundle
Bundle 'justinmk/vim-sneak'
Bundle 'rking/ag.vim'
Bundle 'vim-scripts/IndexedSearch'
Bundle 'nelstrom/vim-visual-star-search'
Bundle 'skwp/greplace.vim'
Bundle 'Lokaltog/vim-easymotion'

" textobjects.vundle
" These bundles introduce new textobjects into vim,
" For example the Ruby one introduces the 'r' text object
" such that 'var' gives you Visual Around Ruby
Bundle 'austintaylor/vim-indentobject'
Bundle 'bootleq/vim-textobj-rubysymbol'
Bundle 'coderifous/textobj-word-column.vim'
Bundle 'kana/vim-textobj-datetime'
Bundle 'kana/vim-textobj-entire'
Bundle 'kana/vim-textobj-function'
Bundle 'kana/vim-textobj-user'
Bundle 'lucapette/vim-textobj-underscore'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'thinca/vim-textobj-function-javascript'
Bundle 'wellle/targets.vim'

" vim-improvements.vundle
Bundle 'AndrewRadev/splitjoin.vim'
Bundle 'Raimondi/delimitMate'
"Bundle 'Shougo/neocomplete.git'
Bundle 'briandoll/change-inside-surroundings.vim.git'
Bundle 'junegunn/vim-easy-align'
Bundle 'tomtom/tcomment_vim.git'
Bundle 'vim-scripts/matchit.zip.git'
Bundle 'kristijanhusak/vim-multiple-cursors'
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'sjl/gundo.vim'
Bundle 'skwp/YankRing.vim'
Bundle 'tpope/vim-abolish'
Bundle 'tpope/vim-endwise.git'
Bundle 'tpope/vim-ragtag'
Bundle 'tpope/vim-repeat.git'
Bundle 'tpope/vim-surround.git'
Bundle 'tpope/vim-unimpaired'
Bundle 'vim-scripts/AnsiEsc.vim.git'
Bundle 'vim-scripts/AutoTag.git'
Bundle 'vim-scripts/lastpos.vim'
Bundle 'vim-scripts/sudo.vim'
Bundle 'goldfeld/ctrlr.vim'
"Bundle 'editorconfig/editorconfig-vim'
Bundle 'vim-scripts/tagbar'
Bundle 'Shougo/vimshell.vim'

" copilot
Bundle 'github/copilot.vim'

" https://github.com/neoclide/coc.nvim
" node 试用 nvm 设置 nvm alias default v16 的最新版本最好
" cd ~/.vim/bundle/coc.nvim; yarn install --frozen-lockfile
Bundle 'neoclide/coc.nvim', {'branch': 'release'}
" https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions
" in vim :CocInstall coc-calc coc-diagnostic coc-docker coc-git coc-jedi coc-json @yaegassy/coc-nginx coc-sh coc-solargraph coc-tabnine coc-xml coc-yaml
" other common plugin: coc-eslint coc-java coc-lists coc-markdownlint coc-perl coc-sql coc-tsserver

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" basic config
set t_Co=256
set number
set backspace=indent,eol,start
set history=1000
set showcmd
set showmode
set gcr=a:blinkon0
set visualbell
set autoread
set hidden
syntax on
set noswapfile
set nobackup
set nowb
"if has('persistent_undo')
"  if !isdirectory(expand('~').'/.vim/backups')
"    silent !mkdir ~/.vim/backups > /dev/null 2>&1
"  endif
"  set undodir=~/.vim/backups
"  set undofile
"endif
set undofile
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
filetype plugin on
filetype indent on
set list listchars=tab:>-,trail:-
set wrap
set linebreak
set foldmethod=indent
set foldnestmax=3
set nofoldenable
set wildmode=list:longest
set wildmenu
set wildignore=*.o,*.obj,*~
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif
set scrolloff=8
set sidescrolloff=15
set sidescroll=1
set incsearch
set hlsearch
set ignorecase
set smartcase
scriptencoding utf-8
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
command W w !sudo tee % > /dev/null
set cmdheight=1
set lazyredraw
set mouse=nv
set completeopt=menu,menuone,preview
set pastetoggle=<F7>
set tags=./tags;~/tags
map <F10> :!ctags -R --exclude=jujube --exclude=vendor/cache --fields=+l --extra=+q .<CR>
let g:used_javascript_libs = 'jquery'
set grepprg=git\ grep
let g:grep_cmd_opts = '--line-number'
if has("win16") || has("win32") || has("win64")
  set clipboard=unnamedplus
else
  set clipboard=unnamed
endif
let mapleader=","

" plugin configs
" itchyny/lightline.vim
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'fugitive': 'MyFugitive',
      \   'readonly': 'MyReadonly',
      \   'filename': 'MyFilename',
      \ },
      \ 'separator': { 'left': '>', 'right': '<' },
      \ 'subseparator': { 'left': '>', 'right': '<' }
      \ }
function! MyReadonly()
  if &filetype == "help"
    return ""
  elseif &readonly
    return "l "
  else
    return ""
  endif
endfunction
function! MyFugitive()
  if exists("*fugitive#head")
    let _ = fugitive#head()
    return strlen(_) ? '| '._ : ''
  endif
  return ''
endfunction
function! MyFilename()
  return ('' != MyReadonly() ? MyReadonly() . ' ' : '') .
       \ ('' != expand('%') ? expand('%') : '[NoName]')
endfunction
" flazz/vim-colorschemes
try
  colorscheme railscasts
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme desert
endtry
" nathanaelkane/vim-indent-guides
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
let g:indent_guides_auto_colors=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=235
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=234
" Shougo/neocomplete.git
"let g:acp_enableAtStartup = 0
"let g:neocomplete#enable_at_startup = 1
"let g:neocomplete#enable_camel_case = 1
"let g:neocomplete#enable_smart_case = 1
"let g:neocomplete#sources#buffer#disabled_pattern = '\/dist\/\|\.log\|\/tmp\/'
"let g:neocomplete#sources#syntax#min_keyword_length = 3
"let g:neocomplete#max_list = 20
"let g:neocomplete#auto_completion_start_length = 4
"let g:neocomplete#force_overwrite_completefunc = 1
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#force_overwrite_completefunc = 1
"if !exists('g:neocomplete#keyword_patterns')
"  let g:neocomplete#keyword_patterns = {}
"endif
"let g:neocomplete#keyword_patterns['default'] = '\h\w*'
"autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
"autocmd FileType yaml setlocal noautoindent
"" <C-h>, <BS>: close popup and delete backword char.
"inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
"inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" jistr/vim-nerdtree-tabs.git
let g:nerdtree_tabs_open_on_gui_startup = 0
let g:nerdtree_tabs_focus_on_files = 1
let g:nerdtree_tabs_open_on_new_tab = 1
map <silent> <leader>tn :NERDTreeTabsToggle<CR>
" scrooloose/nerdtree.git
nnoremap <silent> <C-\> :NERDTreeFind<CR>
" rking/ag.vim
nmap <leader>ag :Ag ""<Left>
nmap <leader>af :AgFile ""<Left>
if split(system("ag --version"), "[ \n\r\t]")[2] =~ '\d\+.\(\(2[5-9]\)\|\([3-9][0-9]\)\)\(.\d\+\)\?'
  let g:ag_prg="ag --vimgrep"
else
  let g:ag_prg="ag --column --nogroup --noheading --ignore tags --ignore .tags"
endif
" vim-scripts/AutoTag.git
let g:autotagExcludeSuffixes="tml.xml.text.txt.vim"
" chrisbra/color_highlight.git
let g:colorizer_auto_filetype='css,sass,less,html,htm,haml,erb'
" ctrlpvim/ctrlp.vim
let g:ctrlp_working_path_mode = 'ra'
if exists("g:ctrlp_user_command")
  unlet g:ctrlp_user_command
endif
if executable('ag')
  let g:ctrlp_user_command =
    \ 'ag %s --files-with-matches -g "" --ignore "\.git$\|\.hg$\|\.svn$"'
  let g:ctrlp_use_caching = 0
else
  let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']
endif
let g:ctrlp_by_filename = 1
let g:ctrlp_switch_buffer = 0
let g:ctrlp_map = '<leader>ff'
" nnoremap <silent> <leader>ff :CtrlP<CR>
nnoremap <silent> <leader>ff :CtrlPMixed<CR>
nnoremap <silent> <leader>fb :CtrlPBuffer<cr>
nnoremap <silent> <D-P> :ClearCtrlPCache<cr>
map <leader>ja :CtrlP app/assets<CR>
map <leader>jm :CtrlP app/models<CR>
map <leader>jc :CtrlP app/controllers<CR>
map <leader>jv :CtrlP app/views<CR>
map <leader>jh :CtrlP app/helpers<CR>
map <leader>jl :CtrlP lib<CR>
map <leader>jp :CtrlP public<CR>
map <leader>js :CtrlP spec<CR>
map <leader>jf :CtrlP fast_spec<CR>
map <leader>jd :CtrlP db<CR>
map <leader>jC :CtrlP config<CR>
map <leader>jV :CtrlP vendor<CR>
map <leader>jF :CtrlP factories<CR>
map <leader>jT :CtrlP test<CR>
nnoremap <silent> <leader>ft :CtrlPBufTag<CR>
nnoremap <silent> <leader>fm :CtrlPMRU<CR>
" Lokaltog/vim-easymotion
let g:EasyMotion_keys='asdfjkoweriop'
nmap ,<ESC> ,,w
nmap ,<S-ESC> ,,b
" sjl/gundo.vim
nmap ,u :GundoToggle<CR>
let g:gundo_right = 1
let g:gundo_width = 60
" tpope/vim-surround.git
let g:surround_113 = "#{\r}"   " v
let g:surround_35  = "#{\r}"   " #
let g:surround_45 = "<% \r %>"    " -
let g:surround_61 = "<%= \r %>"   " =
" scrooloose/syntastic.git
let g:syntastic_ignore_files = ['\m\.wdl$']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=0
let g:syntastic_auto_loc_list=1
let g:syntastic_javascript_checkers = ['jshint']
" Bundle 'mxw/vim-jsx'
let g:jsx_ext_required = 0
"let g:jsx_pragma_required = 1
" tomtom/tcomment_vim.git
nmap <silent> gcp <c-_>p
let g:tcomment_textobject_inlinecomment = ''
" vim-scripts/Tagbar
nnoremap <silent> <leader>tt :TagbarToggle<CR>
" tpope/vim-fugitive
autocmd User fugitive
  \ if fugitive#buffer().type() =~# '^\%(tree\|blob\)$' |
  \   nnoremap <buffer> .. :edit %:h<CR> |
  \ endif
autocmd BufReadPost fugitive://* set bufhidden=delete
" kristijanhusak/vim-multiple-cursors
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_start_key=',mc'
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
function! Multiple_cursors_before()
  if exists(':NeoCompleteLock')==2
    exe 'NeoCompleteLock'
  endif
endfunction
function! Multiple_cursors_after()
  if exists(':NeoCompleteUnlock')==2
    exe 'NeoCompleteUnlock'
  endif
endfunction
" junegunn/vim-easy-align
vmap <Leader>a <Plug>(EasyAlign)
nmap <Leader>a <Plug>(EasyAlign)
if !exists('g:easy_align_delimiters')
  let g:easy_align_delimiters = {}
endif
let g:easy_align_delimiters['#'] = { 'pattern': '#', 'ignore_groups': ['String'] }
" AndrewRadev/splitjoin.vim
nmap sj :SplitjoinSplit<cr>
nmap sk :SplitjoinJoin<cr>
" christoomey/vim-tmux-navigator
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
" skwp/YankRing.vim
let g:yankring_history_file = '.yankring-history'
nnoremap ,yr :YRShow<CR>
nnoremap C-y :YRShow<CR>
" airblade/vim-gitgutter
nnoremap <silent> <leader>tg :GitGutterLineHighlightsToggle<CR>
let g:gitgutter_eager = 0
let g:gitgutter_realtime = 0
" garbas/vim-snipmate.git
let g:snipMate = { 'snippet_version' : 1 }
" 'mattn/emmet-vim'
let g:user_emmet_leader_key='<C-Z>'
" customize configs
vnoremap <leader>p "0p
vnoremap <leader>P "0P
nnoremap 0 ^
nnoremap ^ 0
map ,# ysiw#
vmap ,# c#{<C-R>"}<ESC>
map ," ysiw"
vmap ," c"<C-R>""<ESC>
map ,' ysiw'
vmap ,' c'<C-R>"'<ESC>
map ,( ysiw(
map ,) ysiw)
vmap ,( c( <C-R>" )<ESC>
vmap ,) c(<C-R>")<ESC>
map ,] ysiw]
map ,[ ysiw[
vmap ,[ c[ <C-R>" ]<ESC>
vmap ,] c[<C-R>"]<ESC>
map ,} ysiw}
map ,{ ysiw{
vmap ,} c{ <C-R>" }<ESC>
vmap ,{ c{<C-R>"}<ESC>
map ,` ysiw`
nnoremap ,. '.
imap <C-a> <esc>wa
inoremap <C-a> <C-O><S-i>
inoremap <C-e> <End>
inoremap <C-b> <LEFT>
inoremap <C-f> <RIGHT>
inoremap <C-h> <BACKSPACE>
inoremap <C-d> <DELETE>

cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-p> <UP>
cnoremap <C-n> <DOWN>
cnoremap <C-b> <LEFT>
cnoremap <C-f> <RIGHT>
cnoremap <C-h> <BACKSPACE>
cnoremap <C-d> <DELETE>
function! OpenNerdTree()
  if &modifiable && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
  else
    NERDTreeToggle
  endif
endfunction
nnoremap <silent> <C-\> :call OpenNerdTree()<CR>
nmap <silent> ,qc :cclose<CR>
nmap <silent> ,qo :copen<CR>
nnoremap <C-w>f :sp +e<cfile><CR>
nnoremap <C-w>gf :tabe<cfile><CR>
map <silent> ,gz <C-w>o
nnoremap <silent> vv <C-w>v
nnoremap <silent> ss <C-w>s
nnoremap <silent> ,cf :let @* = expand("%:~")<CR>
nnoremap <silent> ,cr :let @* = expand("%")<CR>
nnoremap <silent> ,cn :let @* = expand("%:t")<CR>
nmap <silent> // :nohlsearch<CR>
nnoremap ' `
nnoremap ` '
nnoremap <C-t>c :tabnew<CR>
nnoremap <silent> H :tabprevious<CR>
nnoremap <silent> L :tabnext<CR>
nnoremap ˙ gT
nnoremap ¬ gt
let g:lasttab = 1
nnoremap <silent> T :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()
nnoremap <silent> <leader>1 1gt
nnoremap <silent> <leader>2 2gt
nnoremap <silent> <leader>3 3gt
nnoremap <silent> <leader>4 4gt
nnoremap <silent> <leader>5 5gt
nnoremap <silent> <leader>6 6gt
nnoremap <silent> <leader>7 7gt
nnoremap <silent> <leader>8 8gt
nnoremap <silent> <leader>9 9gt
nnoremap <silent> <leader>9 9gt
nnoremap <silent> <leader>0 :tablast<CR>
vnoremap < <gv
vnoremap > >gv
nnoremap j gj
nnoremap k gk
inoremap <expr> <c-j> pumvisible() ? "\<C-e>\<Down>" : "\<Down>"
inoremap <expr> <c-k> pumvisible() ? "\<C-e>\<Up>" : "\<Up>"
nmap <silent> <leader>> ciw<Esc>:let @"=substitute(strtrans(@"), '[A-Z]\C', '_\L&', 'g')<CR>"0p
nmap <silent> <leader>< ciw<Esc>:let @"=substitute(strtrans(@"), '_\([a-z]\)\C', '\U\1', 'g')<CR>"0p
map <leader>ww :w<CR>
map <leader>xx :x<CR>
map <leader>qq :qa<CR>
nmap <leader>rd :redraw!<CR>
nnoremap <F8> :set wrap! wrap?<CR>
imap <F8> <C-O><F8>
nnoremap <silent> <C-x> :cn<CR>
nnoremap <silent> <C-z> :cp<CR>
cmap w!! w !sudo tee % >/dev/null
" no use, just for lookup...
nnoremap <C-Up> <C-w>+
nnoremap <C-Down> <C-w>-
nnoremap <C-Left> <C-w><
nnoremap <C-Right>  <C-w>>
" show invisable chars
highlight nonascii guibg=Red ctermbg=2
autocmd BufReadPost * syntax match nonascii "[^\u0000-\u007F]"

" Convert slashes to backslashes for Windows.
if has('win32')
  nmap ,cs :let @*=substitute(expand("%"), "/", "\\", "g")<CR>
  nmap ,cl :let @*=substitute(expand("%:p"), "/", "\\", "g")<CR>

  " This will copy the path in 8.3 short format, for DOS and Windows 9x
  nmap ,c8 :let @*=substitute(expand("%:p:8"), "/", "\\", "g")<CR>
else
  nmap ,cs :let @*=expand("%")<CR>
  nmap ,cl :let @*=expand("%:p")<CR>
endif

nnoremap <leader>r :!"%:p"
