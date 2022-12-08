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

" ruby provider config
" 0 : disable it
let g:loaded_ruby_provider = 0

call plug#begin("/home/ss/.config/nvim/plugged")

Plug 'mkitt/tabline.vim'                                    " Tabline-Vim Plugin
Plug 'chun-yang/auto-pairs'                                 " Auto Pairs Plugin
Plug 'yggdroot/indentline'                                  " IndentLine plugin
Plug 'ntpeters/vim-better-whitespace'				        " Trim Whitespaces Plugin
Plug 'godlygeek/tabular'                                    " Tabular text alignment
Plug 'junegunn/fzf.vim'                                     " fzf plugin
Plug 'sheerun/vim-polyglot'                                 " Vim-Polyglot
Plug 'http://github.com/tpope/vim-surround'                 " Surrounding ysw)
Plug 'scrooloose/nerdtree'                                  " NERDTree Plugin
" Plug 'https://github.com/preservim/nerdcommenter'           " NERDCommenter
Plug 'https://github.com/tpope/vim-commentary'              " For Commenting gcc & gc
Plug 'https://github.com/tpope/vim-fugitive'                " Vim Fugitive
Plug 'https://github.com/airblade/vim-gitgutter'            " Vim gitgutter
Plug 'https://github.com/vim-airline/vim-airline'           " vim-airline Status bar
Plug 'vim-airline/vim-airline-themes'                       " vim-airline-themes
Plug 'https://github.com/ap/vim-css-color'                  " CSS Color Preview
Plug 'machakann/vim-highlightedyank'                        " vim-highlightedyank
Plug 'itchyny/vim-cursorword'                               " vim-hightlight_under_cursor
Plug 'neoclide/coc.nvim', {'branch': 'release'}             " Auto Completion
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

" lua integration
" lua require('base')

" Coc Config
" May need for vim (not neovim) since coc.nvim calculate byte offset by count
" utf-8 byte sequence.
set encoding=utf-8
" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying code actions to the selected code block.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for apply code actions at the cursor position.
nmap <leader>ac  <Plug>(coc-codeaction-cursor)
" Remap keys for apply code actions affect whole buffer.
nmap <leader>as  <Plug>(coc-codeaction-source)
" Apply the most preferred quickfix action to fix diagnostic on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Remap keys for apply refactor code actions.
nmap <silent> <leader>re <Plug>(coc-codeaction-refactor)
xmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)
nmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)

" Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
