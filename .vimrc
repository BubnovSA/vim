" ~ ~ ~ PLUGINS ~ ~ ~
"-----------------------------------------------------------------------------------------------"
call plug#begin()

" Требуется для навигации по дереву
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Требуется для навигации по тексту
Plug 'easymotion/vim-easymotion'

" Плагин для поиска
Plug 'mileszs/ack.vim'

" Строка состояния внизу редактора
Plug 'vim-airline/vim-airline'

" Отображение отступов
Plug 'yggdroot/indentline'

" Подсветка разных языков
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Комметатор текста 
Plug 'tomtom/tcomment_vim'


" Syntax support
Plug 'sheerun/vim-polyglot'
Plug 'editorconfig/editorconfig-vim'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tsony-tsonev/nerdtree-git-plugin'"

" Telescope for search
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

" Цветовая тема
Plug 'tomasiser/vim-code-dark'

call plug#end()
"-----------------------------------------------------------------------------------------------"



" ~ ~ ~ MORE SETTINGS ~ ~ ~
"-----------------------------------------------------------------------------------------------"
let mapleader = "\<Space>"


" Цветовая схема схема
colorscheme codedark
" Активирует комментарии, выделенные курсивом
let g:codedark_italics = 1
" Если у вас есть vim-airline, вы также можете включить предоставленную тему
let g:airline_theme = 'codedark'

"Будет осуществлен выход, если из вкладок остался открыт тольк NERDTree
let NERDTreeShowHidden=1
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif


" Не сохранять swap файлы
set noswapfile

"Переменная expandtab включает замену табов на пробелы
set expandtab

" Кол-во табов
set shiftwidth=4

"smarttab - при нажатии таба в начале строки добавляет количество пробелов равное shiftwidth
set smarttab

"tabstop - количество пробелов в одном обычном табе
set tabstop=4

"softtabstop - количество пробелов в табе при удалении
set softtabstop=4

"Чтобы добавить нумерацию строк
set number

"подсветка синтаксиса
syntax on

" Установка кодировки
set encoding=UTF-8

"Отключение уведомления о ошибквх
set noerrorbells
set novisualbell
set history=200

"Полное отключение мыши
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


" ~ ~ ~ MAPING FOR KEYS  ~ ~ ~
"-----------------------------------------------------------------------------------------------"
map <C-n> :NERDTreeToggle<CR>

cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

map <Down> <C-f>
map <Up> <C-b>

" moveeng between buffers 
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

"" Easy motion plugin
" <Leader>f{char} to move to {char}
map  <Leader>c <Plug>(easymotion-bd-f)
nmap <Leader>c <Plug>(easymotion-overwin-f)
"Move to line
map <Leader>l <Plug>(easymotion-bd-jk)
nmap <Leader>l <Plug>(easymotion-overwin-line)
"Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" Ack, don't open first result automaticly
cnoreabbrev Ack Ack!

" Find files using Telescope command-line sugar.
nnoremap <Leader>ff <cmd>Telescope find_files<cr>
nnoremap <Leader>fg <cmd>Telescope live_grep<cr>
nnoremap <Leader>fb <cmd>Telescope buffers<cr>
nnoremap <Leader>fh <cmd>Telescope help_tags<cr>

"-----------------------------------------------------------------------------------------------"



" ~ ~ ~ MORE RECOMMENDATION ~ ~ ~
"-----------------------------------------------------------------------------------------------"
"
" Рекомендации по плагину -  'tomtom/tcomment_vim'
" Для того что бы закомментировать, надо выделить строку или блок
" Далее нажать (g + >) - для того что бы закомментировать
" (g + <) - что бы раскоменитровать
"
" Рекомнедации по плагину - NerdTREE
" Нажать u что бы сделать корнем дерева NerdTREE выше, на C - что бы корень
" стал глубже (переход получается не сразу, надо подождать)
"
" Способы открытия файлов из NerdTREE
" i - файл откроется в текущем окне по горизантале
" s - по вертикале
"
" Нажать m - что бы вызвать меню над работом с файлом, который находиться под курсором
"
