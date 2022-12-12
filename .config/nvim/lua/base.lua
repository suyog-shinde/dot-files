local g = vim.g -- global variables
local o = vim.o -- general options
local set = vim.opt -- global,window and buffer options

vim.cmd [[
  syntax enable
  colorscheme ayu
]]

set.termguicolors = true -- enable true color support

set.number = true -- show line numbers
set.wrap = true -- wrap text around
set.autoindent = true -- auto indent next line
set.tabstop = 4 -- tab space on screen
set.expandtab = true -- transform tab to spaces
set.shiftwidth = 4 -- characters used to indent a line
set.smarttab = true
set.softtabstop = 4
set.ignorecase = true -- ignore uppercase when searching
set.smartcase = true -- ignore uppercase until said so
set.incsearch = true -- show the results from the cursor
set.hlsearch = false -- disable highlight search word
set.cursorline = true
set.splitright = true
set.splitbelow = true
-- set.showmode = false

set.clipboard:append("unnamedplus")

-- Set completeopt to have a better completion experience
set.completeopt = {'menu','menuone','longest'}
-- set.completeopt = {'menuone','longest'}

-- Avoid showing message extra message when using completion
set.shortmess:append('c')

set.encoding = 'utf-8'
set.list = true
set.listchars = "trail:·,nbsp:◇,tab:→ ,extends:▸,precedes:◂"

set.mouse = "a" -- allow all mouse interactions

set.backup = false
set.writebackup = false
set.undofile = true
set.swapfile = false

set.history = 50 -- remember 50 items in cmdline history

-- Map <leader> to space
g.mapleader = " "
g.maplocalleader = " "

-- IndentLine
-- g.indentLine_defaultGroup = 'SpecialKey'
g.indentLine_char_list = "┊"
g.indentLine_setColors = 1

-- Strip Whitespaces on save
-- g.better_whitespace_enabled=0
g.current_line_whitespace_disabled_soft=1
g.strip_whitespace_on_save = 1
g.strip_whitespace_confirm=0

-- air-line status bar
g.airline_powerline_fonts = 1
g.airline_theme='ayu_mirage'
-- g.airline_theme='ayu_dark'
-- g.airline_theme='base16_default'
-- g.airline_theme='base16_gruvbox_dark_medium'

-- -- air-line tabline extension
g['airline#extensions#tabline#enabled'] = 1
g['airline#extensions#tabline#formatter'] = 'unique_tail'
g['airline#extensions#tabline#left_sep'] = ' '
g['airline#extensions#tabline#left_alt_sep'] = '|'

-- Tagbar autoshow
g.tagbar_autoshowtag = 1

-- -- airline symbols
-- g.airline_left_sep = ""
-- g.airline_left_alt_sep = ""
-- g.airline_right_sep = ""
-- g.airline_right_alt_sep = ""
-- g.airline_symbols.branch = ""
-- g.airline_symbols.readonly = ""
-- g.airline_symbols.linenr = ""

-- Provider config
g.python3_host_prog = '/usr/bin/python3' -- python
-- g.loaded_python3_provider = 0 -- python disabled
g.node_host_prog = '/usr/lib/node_modules/neovim/bin/cli.js' -- nodejs
-- g.loaded_node_provider = 0 -- nodejs disabled
-- g.perl_host_prog = '/usr/bin/perl'
g.loaded_perl_provider = 0 -- perl disabled
-- g.ruby_host_prog = '/usr/bin/ruby'
g.loaded_ruby_provider = 0 -- ruby disabled
