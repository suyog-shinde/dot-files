local keyset = vim.keymap.set

-- sidebar --
keyset('n', '<C-t>', ':NERDTreeToggle<CR>') -- Toggle NERDTree
keyset('n', '<F8>', ':TagbarToggle<CR>') -- Toggle Tagbar

-- system clipboard --
keyset('n','<c-c>','"+y') -- ctrl-c for copy in normal mode
keyset('v','<c-c>','"+y') -- ctrl-c for copy in visual mode
keyset('n','<c-v>','"+p') -- ctrl-v for paste in normal mode

