" auto reload .vimrc
autocmd! bufwritepost .vimrc source %

" Make Y behave like other capitals
map Y y$

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

" highlight search
set hlsearch

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

" Mode toggle
map <F3> :set nospell <CR>
map <F2> :set spell spelllang=en_us<CR>

" Set scroll
:set scroll=10

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
execute pathogen#infect()

" Python mode
" cd ~/.vim/bundle
" git clone https://github.com/klen/python-mode
Bundle 'Python-mode-klen'

" power line
" cd ~/.vim/bundle
" git clone git://github.com/Lokaltog/vim-powerline.git
"Bundle 'vim-powerline'
set laststatus=2
"set guifont=PowerlineSymbols\ for\ Powerline
let g:Powerline_symbols = 'fancy'

" Nerd tree start and stop
Bundle 'The-NERD-tree'
autocmd vimenter * if !argc() | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Color scheme
" mkdir -p ~/.vim/colors && cd ~/.vim/colors
" wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400
Bundle 'wombat256.vim'
set t_Co=256
color wombat256mod

filetype plugin indent on
syntax on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" For Python Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"wrap text
set tw=79
set nowrap " don't automatically wrap on load
set fo-=t " don't automatically wrap text when typing
set colorcolumn=80
highlight ColorColumn ctermbg=233

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" For Latex Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""compatible with Word or Openoffice
"set tw=0 wrap linebreak
"
""spell check
"set spell spelllang=en_us

