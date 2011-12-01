if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
   set fileencodings=utf-8,latin1
endif

" Use Vim defaults (much better!)
set nocompatible

" Allow backspacing over everything in insert mode
set bs=indent,eol,start

" Read/write a .viminfo file, don't store more than 50 lines of registers
set viminfo='20,\"50

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
\ if line("'\"") > 0 && line ("'\"") <= line("$") |
\   exe "normal! g'\"" |
\ endif

if has("cscope") && filereadable("/usr/bin/cscope")
   set csprg=/usr/bin/cscope
   set csto=0
   set cst
   set nocsverb
   " add any database in current directory
   if filereadable("cscope.out")
      cs add cscope.out
   " else add database pointed to by environment
   elseif $CSCOPE_DB != ""
      cs add $CSCOPE_DB
   endif
   set csverb
endif

syntax on

" Highlighting the last used search pattern.
set hlsearch

" Plugins configuration
" PathToGen
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

" EnhancedCommentify
let g:EnhCommentifyFirstLineMode = 'yes'
let g:EnhCommentifyRespectIndent = 'yes'

" Tag list
let TList_Ctags_Cmd="/usr/bin/ctags"
let Tlist_WinWidth = 40
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Close_On_Select = 1
map <F3> :TlistToggle<CR>

" Python highlighting enhanced
let python_highlight_all = 1

" TaskList
map <F5> <Plug>TaskList

" Supertab
let g:SuperTabMappingForward = '<Plug>supertabKey'

" xptemplate
let g:xptemplate_fallback = '<Plug>supertabKey'
let g:xptemplate_minimal_prefix = 'full'
let g:xptemplate_key = '<Tab>'
let g:xptemplate_vars = "SParg="

" Command-T
nmap <silent> t :CommandT<CR>
let g:CommandTAcceptSelectionMap = '<C-t>'
let g:CommandTAcceptSelectionTabMap = '<CR>'
let g:CommandTMaxHeight = 10
set wildignore+=.git,*.pyc,*.o

" Indent and tab configs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab

autocmd FileType ruby setlocal sw=2 sts=2 et smarttab tabstop=2

filetype plugin indent on

" Perl options
"let perl_extended_vars = 1
"let perl_fold=1

" Change tabs using Ctrl+PgUP/Down
map <A-1> 1gt  
map <A-2> 2gt  
map <A-3> 3gt  
map <A-4> 4gt  
map <A-5> 5gt
map <A-6> 6gt  
map <A-7> 7gt  
map <A-8> 8gt  
map <A-9> 9gt  
imap <A-1> <ESC>1gta  
imap <A-2> <ESC>2gta  
imap <A-3> <ESC>3gta  
imap <A-4> <ESC>4gta  
imap <A-5> <ESC>5gta  
imap <A-6> <ESC>6gta  
imap <A-7> <ESC>7gta  
imap <A-8> <ESC>8gta  
imap <A-9> <ESC>9gta 

" Colors, fonts and interface settings
let molokai_original = 1
set incsearch
set wildmenu

set guifont=Monospace\ 10
"set guifont=Monaco\ 11
set guioptions-=T
let &guicursor = &guicursor . ",a:ver20"

" Don't wrap lines 
set nowrap

" Enable/Disable paste mode
nnoremap <F4> :set invpaste paste?<CR>
imap <F4> <C-O><F4>
set pastetoggle=<F4>

" Move lines with: Ctrl+(down) or Ctrl+(up)
nmap <C-Down> <esc>ddp<esc>
nmap <C-Up> <esc>ddkP<esc>
vmap <C-Down> djP
vmap <C-Up> dkP

" Jump to next line on insert mode
imap <C-o> <esc>o

" Maps common commands
cab W w
cab Q q
cab Wq wq
cab wQ wq
cab WQ wq
cab Tabf tabf
cab t tabf
cab T tabf
cab Qa qa
cab Wqa wqa
cab ! 1

" Set backup files
set backup
set backupdir=/tmp
set dir=/tmp

" Omnicompletation
"au FileType python set omnifunc=pythoncomplete#Complete
"au FileType javascript set omnifunc=javascriptcomplete#CompleteJS
"au FileType css set omnifunc=csscomplete#CompleteCSS
"au FileType html set omnifunc=htmlcomplete#CompleteTags

" Django Snippets
"au BufRead,BufNewFile *.html set ft=htmldjango.html.django_template
"au BufRead,BufNewFile models.py,forms.py,tables,py set ft=python.django

"au BufRead,BufNewFile *.js set ft=javascript.jquery
"au BufRead,BufNewFile sig_*.conf* set ft=dosini
"au BufRead,BufNewFile *.repo set ft=dosini
