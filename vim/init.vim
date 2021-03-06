call plug#begin('~/.local/share/nvim/plugged')
"автокомплит для C
Plug 'ycm-core/YouCompleteMe'
"дерево проекта
Plug 'scrooloose/nerdtree'
"дерево функций и перемеменных
Plug 'majutsushi/tagbar'
"удобный поиск файлов
Plug 'ctrlpvim/ctrlp.vim'
"ripgrep прямо в vim
Plug 'jremmen/vim-ripgrep'
"крутая строка состояния
Plug 'itchyny/lightline.vim'
"автозакрытие кавычек и скобок
Plug 'jiangmiao/auto-pairs'
"удобное комментирование кода
Plug 'tomtom/tcomment_vim'
"для редактирования нескольких курсоров
Plug 'terryma/vim-multiple-cursors'
"отображение скопированного блока
Plug 'machakann/vim-highlightedyank'
"красивое отображение кода
Plug 'morhetz/gruvbox'
Plug 'iCyMind/NeoSolarized'
Plug 'octol/vim-cpp-enhanced-highlight'
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
"для работы скобками, кавычками и тд
Plug 'tpope/vim-surround'
"подсвечивает пробелы в начале/конце строк
Plug 'ntpeters/vim-better-whitespace'
"удаляет лишние пробелы
Plug 'thirtythreeforty/lessspace.vim'
call plug#end()

"включить автокомплит
let g:ycm_clangd_uses_ycmd_caching = 0
let g:ycm_autoclose_preview_window_after_completion=1

let g:airline_theme='luna'
let g:move_key_modifier = 'C'
let mapleader = ","
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ 'enable': {
          \ 'statusline': 1,
          \ 'tabline': 0
        \ }
      \ }

"удалять, а не вырезать
nnoremap x "_x
nnoremap d "_d
nnoremap D "_D
vnoremap d "_d
"убрать подсветку после поиска шаблона
nnoremap <esc><esc> :noh<CR>
nnoremap <F4> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
" , + s
map <Leader> <Plug>(easymotion-prefix)
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
"создание вкладки
map <F5> <Esc>:browse tabnew<CR>
"убирать номера строк
nnoremap <F2> :set nonumber!<CR>

"сохранять файл как root
command W :execute ':silent w !sudo tee % > /dev/null' | :edit!

"включить подсветку синтаксиса
syntax on
colorscheme NeoSolarized
colorscheme gruvbox
set background=dark
"показывать номера строк
set number
"показывать относительные номера строк
" set relativenumber
"табы вместо пробелов
set tabstop=4 shiftwidth=4 expandtab
"подсвечивать поиск
set hlsearch
"поиск по мере набора.
set incsearch
"игнорировать регистр при поиске
set ignorecase
"подсвечивать текущую линию, где курсор
set cursorline
set cursorcolumn
"поддержка мыши
set mouse=a
"set mousemodel=popup
"добавить линию на 120 символах
set colorcolumn=120
"кодировка текста по умолчанию utf8
set termencoding=utf8
set termguicolors
"вывод окна доп инфы снизу
set splitbelow
set langmap=!\\"№\\;%?*ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;!@#$%&*`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>
"вырубаем .swp и ~ (резервные) файлы
set nobackup
set noswapfile
"копировать во внешний буфер
set clipboard=unnamedplus
"всегда показывать вкладку
set showtabline=2

"перемещение табом по автокомплиту
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
