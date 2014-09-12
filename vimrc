set nocompatible                    " full vim
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Plugin 'gmarik/vundle'

Plugin 'Lokaltog/vim-easymotion'
Plugin 'Lokaltog/vim-powerline'
Plugin 'airblade/vim-gitgutter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bogado/file-line'
Plugin 'cloudhead/shady.vim'
Plugin 'digitaltoad/vim-jade'
Plugin 'ervandew/supertab'
Plugin 'godlygeek/tabular'
Plugin 'grekko/vim-irblack-grekko'
Plugin 'guns/vim-clojure-static'
Plugin 'guns/xoria256.vim'
Plugin 'ivalkeen/nerdtree-execute'
Plugin 'jceb/vim-orgmode'
Plugin 'jpalardy/vim-slime'
Plugin 'kchmck/vim-coffee-script'
Plugin 'kien/ctrlp.vim'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'mileszs/ack.vim'
Plugin 'mrtazz/molokai.vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/nerdtree'
Plugin 'sickill/vim-pasta'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-classpath'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-ragtag'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-rails'
Plugin 'tsaleh/vim-tmux'
Plugin 'vim-scripts/Gummybears'
Plugin 'vim-scripts/UltiSnips'
Plugin 'vim-scripts/nerdtree-ack'
Plugin 'vim-scripts/utl.vim'
Plugin 'wavded/vim-stylus'
Plugin 'wincent/Command-T'
Plugin 'jnwhiteh/vim-golang'
Plugin 'laurentgoudet/vim-howdoi.git'

syntax enable                       " enable syntax highlighting
set encoding=utf8                   " utf8 default encoding

filetype plugin indent on

noremap , \
let mapleader = ","

set scrolloff=3                     " show 3 lines of context around the cursor
set autoread                        " set to auto read when a file is changed from the outside
set autowrite
set showcmd                         " show typed commands

set wildmenu                        " turn on WiLd menu
set wildmode=list:longest,list:full " activate TAB auto-completion for file paths
set wildignore+=*.o,.git,.svn,node_modules,*.class,*.jar,*.png,*.jpg,*.jpeg,*.gif,*.zip,*.tar,*.gz,target

set ruler                           " always show current position
set backspace=indent,eol,start      " set backspace config, backspace as normal
set nomodeline                      " security

set hlsearch                        " highlight search things
set incsearch                       " go to search results as typing
set smartcase                       " but case-sensitive if expression contains a capital letter.
set ignorecase                      " ignore case when searching
set gdefault                        " assume global when searching or substituting
set magic                           " set magic on, for regular expressions
set showmatch                       " show matching brackets when text indicator is over them

set lazyredraw                      " don't redraw screen during macros, faster
set ttyfast                         " improves redrawing for newer computers
set fileformats=unix,mac,dos
set ttymouse=xterm

set nobackup                        " prevent backups of files, since using vcs
set nowritebackup
set noswapfile

set shiftwidth=4                    " set tab width
set softtabstop=4
set tabstop=4

set smarttab
set expandtab                       " use spaces, not tabs
set autoindent                      " set automatic code indentation
set hidden                          " allow background buffers w/out writing

set nowrap                          " don't wrap lines

set list                            " show hidden characters
set listchars=tab:\ \ ,trail:·      " show · for trailing space, \ \ for trailing tab
set spelllang=en,es                 " set spell check language
set noeb vb t_vb=                   " disable audio and visual bells

set t_Co=256                        " use 256 colors
set background=light
colorscheme jellybeans                 " terminal theme
map <m-a> ggVG

if has("gui_running")
    au GUIEnter * set vb t_vb=       " disable visual bell in gui
    set guioptions-=T                " remove gui toolbar
    set guioptions-=m                " remove gui menubar
    set linespace=2                  " space between lines
    set columns=160 lines=35         " window size

    set guioptions+=LlRrb            " crazy hack to get gvim to remove all scrollbars
    set guioptions-=LlRrb

    set guifont=Menlo\ Regular:h15    " gui font
endif


" FOLDING
"set foldenable                   " enable folding
"set foldmethod=indent            " most files are evenly indented
"set foldlevel=99


" Powerline
let g:Powerline_symbols = 'fancy'

" Ack
set grepprg=ack
nnoremap <leader>a :Ack<space>
let g:ackhighlight=1
let g:ackprg="ack -H --type-set jade=.jade --type-set stylus=.styl --type-set coffee=.coffee --nocolor --nogroup --column --ignore-dir=node_modules"

" CoffeeScript
map <leader>cc :CoffeeCompile<cr>
map <silent> <leader>cm :CoffeeMake<cr> <cr>

"" LANGUAGE SPECIFIC

" Python
au FileType python set noexpandtab
au FileType groovy set noexpandtab shiftwidth=4 tabstop=4
au FileType gsp set noexpandtab
au FileType gsp set shiftwidth=4
au FileType gsp set tabstop=4

" JavaScript
au BufRead,BufNewFile *.json set ft=javascript

"" STATUS LINE
set laststatus=2 " always hide the last status
let g:user_zen_settings = {
\    'php' : {
\        'extends' : 'html',
\    },
\    'xml' : {
\        'extends' : 'html',
\    },
\    'haml' : {
\       'extends' : 'html',
\    },
\    'gsp' : {
\        'extends' : 'html',
\    },
\    'html.erb' : {
\        'extends' : 'html',
\    }
\}

"Root permission on a file inside VIM
cmap w!! w !sudo tee >/dev/null %

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['lightblue',    'SeaGreen3'],
    \ ['lightgray',    'lightOrchid3'],
    \ ['lightgreen',   'firebrick3'],
    \ ['lightcyan',    'RoyalBlue3'],
    \ ['lightred',     'SeaGreen3'],
    \ ['lightmagenta', 'lightOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['lightmagenta', 'lightOrchid3'],
    \ ['lightblue',    'firebrick3'],
    \ ['lightgreen',   'RoyalBlue3'],
    \ ['lightcyan',    'SeaGreen3'],
    \ ['lightred',     'lightOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:slime_target = "tmux"
