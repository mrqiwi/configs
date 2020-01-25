call plug#begin('~/.local/share/nvim/plugged')
"плагин для работы с Python
Plug 'klen/python-mode'
"автокомплит для C
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/deoplete-clangx'
"дерево проекта
Plug 'scrooloose/nerdtree'
"дерево функций и перемеменных
Plug 'majutsushi/tagbar'
"крутая строка состояния
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"автозакрытие кавычек и скобок
Plug 'jiangmiao/auto-pairs'
"удобное комментирование кода
Plug 'tomtom/tcomment_vim'
"для редактирования нескольких курсоров
Plug 'terryma/vim-multiple-cursors'
"отображение скопированного блока
Plug 'machakann/vim-highlightedyank'
"отображение кода практически как в SublimeText
" Plug 'ErichDonGubler/vim-sublime-monokai'
" Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'morhetz/gruvbox'
"быстрое перемещение строк вверх/вниз
Plug 'matze/vim-move'
"поиск файла по содержимому
Plug 'rking/ag.vim'
"быстрое перемещение по коду
Plug 'easymotion/vim-easymotion'
"выделение измененных строк в git
Plug 'airblade/vim-gitgutter'
"работа с git из vim
Plug 'tpope/vim-fugitive'
"подсвечивает пробелы в начале/конце строк
Plug 'ntpeters/vim-better-whitespace'
"удаляет лишние пробелы
Plug 'thirtythreeforty/lessspace.vim'
call plug#end()


let g:deoplete#enable_at_startup = 1
let g:pymode_lint = 1
let g:pymode_rope = 1
let g:pymode_syntax = 0
let g:airline_theme='luna'
" let g:sublimemonokai_term_italic = 1
let g:move_key_modifier = 'C'
let mapleader = ","


"убрать подсветку после поиска шаблона
nnoremap <silent> <leader>c :nohlsearch<CR>
nnoremap <F4> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
" , + s
map <Leader> <Plug>(easymotion-prefix)


"включить подсветку синтаксиса
syntax on
" colorscheme sublimemonokai
colorscheme gruvbox
set background=dark


"показывать номера строк
set number
"показывать относительные номера строк
" set relativenumber
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
"вывод окна доп инфы снизу
set splitbelow


"перемещение табом по автокомплиту
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
"автозакрытие окна-подсказки автокомплита
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
