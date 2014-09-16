" auto reload .vimrc
autocmd! bufwritepost .vimrc source %

" Make Y behave like other capitals
map Y y$

" map jk to ESC
"inoremap jk <Esc>

" highlight current line
"set cursorline 

" fold, use z+a to fold and unfold
set foldmethod=indent
set foldlevel=99

"line number
set number

" bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
" Every unnecessary keystroke that can be saved is good for your health :)
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" improve movement on wrapped lines
nnoremap j gj
nnoremap k gk

" highlight search and toggle
map <F2> :set hlsearch! <CR>
set hlsearch 

" Mode toggle
map <F3> :set nospell! <CR>
"map <F3> :set spell spelllang=en_us<CR>

"tab and indent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
set nobackup
set nowritebackup
set noswapfile

" move easier to move the block
vnoremap < <gv
vnoremap > >gv

" Set scroll
:set scroll=10

" Beautify display of hidden characters (tabs and line breaks)
" (`:set list!` to toggle)
set listchars=tab:>-,trail:_,eol:^
map <F4> :set list! <CR>

" Set Font
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 11
  elseif has("gui_win32")
    set guifont=Consolas:h10:cANSI
  endif
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype off

" Vundle
" cd ~/.vim/bundle/vundle
" git clone http://github.com/gmarik/vundle.git
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" pathogen
" auto load plugs
"execute pathogen#infect()

" Python mode
" cd ~/.vim/bundle
" git clone https://github.com/klen/python-mode
"Bundle 'Python-mode-klen'
"let g:pymode_syntax = 1

" power line
" cd ~/.vim/bundle
" git clone git://github.com/Lokaltog/vim-powerline.git
Bundle 'Lokaltog/vim-powerline'
set laststatus=2
"set guifont=PowerlineSymbols\ for\ Powerline
"let g:Powerline_symbols='fancy'

" Nerd tree start and stop
Bundle 'The-NERD-tree'
autocmd vimenter * if !argc() | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Color scheme
set t_Co=256
"Bundle 'wombat256.vim'
Bundle 'flazz/vim-colorschemes'
color wombat256mod

" UltiSnips
Bundle 'UltiSnips'

" Syntastic
Bundle 'scrooloose/syntastic'

" JEDI
Bundle 'davidhalter/jedi-vim'
let g:jedi#completions_command = "<C-N>"

" Gist
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'

" Surround
Bundle 'tpope/vim-surround'


filetype plugin indent on
syntax on

" For Python Settings
" ===================
"wrap text
set tw=79
set nowrap " don't automatically wrap on load
set fo-=t " don't automatically wrap text when typing

" 80 character column
set colorcolumn=80
if has("gui_running")
  if has("gui_gtk2")
    highlight ColorColumn guibg=Black
  elseif has("gui_win32")
    highlight ColorColumn guibg=Black
    au GUIEnter * simalt ~x     "maximun the windows 
  endif
else
    highlight ColorColumn ctermbg=233
endif

" remove whitespace
autocmd BufWritePre *.py :%s/\s\+$//e

" debugger keyboard shortcuts 
map <F5> :Dbg over<CR> 
map <F6> :Dbg into<CR> 
map <F7> :Dbg out<CR> 
map <F8> :Dbg here<CR> 
map <F9> :Dbg break<CR> 
map <F10> :Dbg watch<CR> 
map <F11> :Dbg down<CR> 
map <F12> :Dbg up<CR> 

" For Latex Settings
" ==================
""compatible with Word or Openoffice
"set tw=0 wrap linebreak
"
""spell check
"set spell spelllang=en_us
