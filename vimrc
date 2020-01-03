call plug#begin()

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'valloric/youcompleteme'
"удобное комментирование кода
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-fugitive'
"выделение измененных строк
Plug 'airblade/vim-gitgutter'
"редактирование текста сразу в нескольких местах
Plug 'terryma/vim-multiple-cursors'
Plug 'kien/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'ntpeters/vim-better-whitespace'
Plug 'jiangmiao/auto-pairs'
"быстрое перемещение по коду
Plug 'easymotion/vim-easymotion'
Plug 'thirtythreeforty/lessspace.vim'
"улучшенная строка состояния
Plug 'vim-airline/vim-airline'
"отображение кода практически как в SublimeText
Plug 'ErichDonGubler/vim-sublime-monokai'
Plug 'octol/vim-cpp-enhanced-highlight'
"быстрое перемещение строк вверх/вниз
Plug 'matze/vim-move'
"поиск файла по содержимому
Plug 'rking/ag.vim'

call plug#end()

let g:move_key_modifier = 'C'
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_key_list_stop_completion = ['<C-y>', '<CR>']
let g:sublimemonokai_term_italic = 1
let mapleader = ","
"убрать подсветку после поиска шаблона
nnoremap <silent> <leader>c :nohlsearch<CR>
nnoremap <F4> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
" , + s
map <Leader> <Plug>(easymotion-prefix)

"включить подсветку синтаксиса
syntax on
colorscheme sublimemonokai
"показывать номера строк
set number
"показывать относительные номера строк
set relativenumber
"табы вместо пробелов
set noexpandtab
"размер табуляции по умолчанию
set tabstop=4
"подсвечивать поиск
set hlsearch
"поиск по мере набора.
set incsearch
"игнорировать регистр при поиске
set ignorecase
"подсвечивать текущую линию, где курсор
set cursorline
"поддержка мыши
" set mouse=a
"set mousemodel=popup
"добавить линию на 120 символах
set colorcolumn=120
"кодировка текста по умолчанию utf8
set termencoding=utf8
set termguicolors




