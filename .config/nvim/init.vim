:set number
" :set relativenumber
:set wrap
:set autoindent
:set tabstop=4 expandtab
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set ignorecase
:set incsearch
:set nohlsearch
:set cursorline
:set showmode
:set wildmenu
:set wildmode=full
:colorscheme ayu
" :colorscheme gruvbox
" :colorscheme jellybeans
:set termguicolors     " enable true colors support
" :%retab
:set sb
:set spr


" Set completeopt to have a better completion experience
:set completeopt=menuone,longest

" Avoid showing message extra message when using completion
:set shortmess+=c

:syntax enable

" clipboard provider config
" uses xlip as system clipboard
set clipboard+=unnamedplus

" python provider config
let g:python3_host_prog = '/usr/bin/python3'

" node provider config
" make bootup faster
let g:node_host_prog = '/usr/lib/node_modules/neovim/bin/cli.js'

" perl provider config
" 0 : disable it
let g:loaded_perl_provider = 0

call plug#begin("/home/ss/.config/nvim/plugged")

Plug 'mkitt/tabline.vim'                                    " Tabline-Vim Plugin
Plug 'chun-yang/auto-pairs'                                 " Auto Pairs Plugin
Plug 'yggdroot/indentline'                                  " IndentLine plugin
Plug 'ntpeters/vim-better-whitespace'				        " Trim Whitespaces Plugin
Plug 'godlygeek/tabular'                                    " Tabular text alignment
Plug 'sheerun/vim-polyglot'                                 " Vim-Polyglot
Plug 'http://github.com/tpope/vim-surround'                 " Surrounding ysw)
Plug 'scrooloose/nerdtree'                                  " NERDTree Plugin
Plug 'https://github.com/tpope/vim-commentary'              " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline'           " vim-airline Status bar
Plug 'vim-airline/vim-airline-themes'                       " vim-airline-themes
Plug 'https://github.com/ap/vim-css-color'                  " CSS Color Preview
Plug 'machakann/vim-highlightedyank'                        " vim-highlightedyank
Plug 'itchyny/vim-cursorword'                               " vim-hightlight_under_cursor
" Plug 'neoclide/coc.nvim', {'branch': 'release'}             " Auto Completion
" Plug 'https://github.com/tc50cal/vim-terminal'              " Vim Terminal
Plug 'https://github.com/preservim/tagbar'                  " Tagbar for code navigation
Plug 'nvim-tree/nvim-web-devicons'                          " Fork of Developer Icons for Tabs
Plug 'romgrk/barbar.nvim'                                   " Tabs plugin
Plug 'https://github.com/ryanoasis/vim-devicons'            " Developer Icons
Plug 'https://github.com/rafi/awesome-vim-colorschemes'     " Retro colorschemes
" Plug 'https://github.com/terryma/vim-multiple-cursors'      " CTRL + N for multiple cursors

set encoding=UTF-8

call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

nmap <F8> :TagbarToggle<CR>
" nmap <F9> :TransparentToggle<CR>

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisilbe() ? "\<C-p>" : "\<S-Tab>"

" system clipboard
nmap <c-c> "+y
vmap <c-c> "+y
nmap <c-v> "+p
inoremap <c-v> <c-r>+
cnoremap <c-v> <c-r>+
" use <c-r> to insert original character without triggering things like auto-pairs
inoremap <c-r> <c-v>

" resize faster
" nnoremap <M-,> <C-W>5<
" nnoremap <M-.> <C-W>5>
" nnoremap <M--> <C-W>5-
" nnoremap <M-=> <C-W>5+

" let g:kite_auto_complete=0

" IndentLine
" let g:indentLine_defaultGroup = 'SpecialKey'
let g:indentLine_char_list = ['┊']
let g:indentLine_setColors = 1

" Strip Whitespaces on save
" let g:better_whitespace_enabled=0
let g:current_line_whitespace_disabled_soft=1
let g:strip_whitespace_on_save = 1
let g:strip_whitespace_confirm=0

" air-line status bar
let g:airline_powerline_fonts = 1
let g:airline_theme='ayu_mirage'
" let g:airline_theme='ayu_dark'
" let g:airline_theme='base16_default'
" let g:airline_theme='base16_gruvbox_dark_medium'

" air-line tabline extension
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" Tagbar autoshow
let g:tagbar_autoshowtag = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
