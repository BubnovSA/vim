" ~ ~ ~ PLUGINS ~ ~ ~
call plug#begin()

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ap/vim-css-color', { 'for': ['css', 'scss', 'sass', 'stylus']}
Plug 'easymotion/vim-easymotion'
Plug 'mileszs/ack.vim'
Plug 'vim-airline/vim-airline'
Plug 'yggdroot/indentline'
Plug 'tomtom/tcomment_vim'
Plug 'sheerun/vim-polyglot'
Plug 'editorconfig/editorconfig-vim'
" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tsony-tsonev/nerdtree-git-plugin'
Plug 'jeetsukumaran/vim-buffergator'
" Coc Vim
" Install :CocInstall coc-docker coc-css coc-html coc-json coc-tsserver coc-eslint coc-emmet coc-highlight coc-stylelint coc-xml coc-prettier
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Plugins for telescope
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

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"


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
" nnoremap <Leader>ff <cmd>Telescope find_files<cr>
" nnoremap <Leader>fg <cmd>Telescope live_grep<cr>
" nnoremap <Leader>fb <cmd>Telescope buffers<cr>
" nnoremap <Leader>fh <cmd>Telescope help_tags<cr>

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Buffergator
let g:buffergator_window_statusline = 1
let g:buffergator_sort_regime = "mru"
let g:buffergator_viewport_split_policy = "B"
let g:buffergator_split_size = 10
let g:buffergator_autoexpand_on_split = 0

cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>

"# Notes for macros
"# register = plase to store macros;
"#
"# Commands:
"#   Press <qa> - start record macros in register <a>;
"#   Press <qd> - start record macros in register <d>;
"#   Press <q> - end record macros;
"#   Press <@a> - apply macros from register <a> for current string;
"#   Press <@@> - apply last macros for current string;
"#   Run <:<first_string_string>,<end_string_number>norm! @<name_regster>> -
"#   apply macros for target range strings;
"#   Example (:22,51norm! @a);
