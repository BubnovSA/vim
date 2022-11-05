" ~ ~ ~ PLUGINS ~ ~ ~
call plug#begin()

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Need more settings
" Plug 'ryanoasis/vim-devicons'
Plug 'ap/vim-css-color', { 'for': ['css', 'scss', 'sass', 'stylus']}

Plug 'easymotion/vim-easymotion'

Plug 'mileszs/ack.vim'

Plug 'vim-airline/vim-airline'

Plug 'yggdroot/indentline'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'tomtom/tcomment_vim'

Plug 'sheerun/vim-polyglot'
Plug 'editorconfig/editorconfig-vim'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tsony-tsonev/nerdtree-git-plugin'"

" Plug 'nvim-lua/plenary.nvim'
" Plug 'nvim-telescope/telescope.nvim'

" Theme
Plug 'tomasiser/vim-code-dark'

call plug#end()



" ~ ~ ~ MORE SETTINGS ~ ~ ~
let mapleader = "\<Space>"


colorscheme codedark
let g:codedark_italics = 1
let g:airline_theme = 'codedark'

" For speed exit from editor
let NERDTreeShowHidden=1
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

set nowritebackup
set nowrap
set cursorline
set clipboard+=unnamedplus
set clipboard=unnamed
set encoding=UTF-8
set noswapfile
set expandtab
set history=500
set ic
set ignorecase
set list
set listchars=tab:‣\ ,trail:•,precedes:«,extends:»
set shiftwidth=4
set smarttab
set tabstop=4
set softtabstop=4
set number
syntax on

set nocompatible
set noerrorbells
set novisualbell
set history=200

set mouse=

" NERDThee git indicators
let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "∘",
    \ "Staged"    : "•",
    \ "Untracked" : "∘",
    \ "Dirty"     : "⁖",
    \ "Clean"     : "✔︎",
    \ }
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
let g:WebDevIconsNerdTreeBeforeGlyphPadding = ''
let g:WebDevIconsUnicodeDecorateFolderNodes = 0
let g:NERDTreeGitStatusNodeColorization = 1
let g:NERDTreeColorMapCustom = {
    \ "Modified"  : "#f8cc7a",
    \ "Staged"    : "#7fb777",
    \ "Untracked" : "#e2787b",
    \ "Dirty"     : "#299999",
    \ "Clean"     : "#87939A",
    \ "Ignored"   : "#808080"
    \ }

let g:NERDTreeLimitedSyntax = 1



" ~ ~ ~ MAPING FOR KEYS  ~ ~ ~
map <C-n> :NERDTreeToggle<CR>

cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

map <Down> <C-f>
map <Up> <C-b>

" Moveeng between buffers 
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

" Easy motion plugin
map  <Leader>c <Plug>(easymotion-bd-f)
nmap <Leader>c <Plug>(easymotion-overwin-f)
" Move to line
map <Leader>l <Plug>(easymotion-bd-jk)
nmap <Leader>l <Plug>(easymotion-overwin-line)
" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" Find files using Telescope command-line sugar.
nnoremap <Leader>ff <cmd>Telescope find_files<cr>
nnoremap <Leader>fg <cmd>Telescope live_grep<cr>
nnoremap <Leader>fb <cmd>Telescope buffers<cr>
nnoremap <Leader>fh <cmd>Telescope help_tags<cr>

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
