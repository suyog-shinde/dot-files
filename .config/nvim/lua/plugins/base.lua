local status, packer = pcall(require, "packer")
if not status then
	print("Packer is not installed")
	return
end

-- Reloads Neovim after whenever you save plugins.lua
vim.cmd([[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup END
]])

packer.startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

    use('nvim-lua/plenary.nvim')                                -- Useful lua functions

    -- -- Telescope --
	-- use({
		-- "nvim-telescope/telescope.nvim",
		-- tag = "0.1.0",
		-- requires = { { "nvim-lua/plenary.nvim" } },
	-- })
	-- use("nvim-telescope/telescope-file-browser.nvim")
    -- use('junegunn/fzf.vim')                                     -- fzf plugin

    -- Time Pope Plugins -- 
    use('tpope/vim-surround')                                   -- Surrounding ysw)
    use('tpope/vim-commentary')                                 -- For Commenting gcc & gc
    use('tpope/vim-fugitive')                                   -- Vim Fugitive

    -- Editor UI Plugins --
    use('sheerun/vim-polyglot')                                 -- Vim-Polyglot
    use('godlygeek/tabular')                                    -- Tabular text alignment
    use("nvim-treesitter/nvim-treesitter")                      -- Treesitter Syntax Highlighting
    use('ryanoasis/vim-devicons')                               -- Developer Icons
    use('nvim-tree/nvim-web-devicons')                          -- Fork of Developer Icons for Tabs
    use('https://github.com/rafi/awesome-vim-colorschemes')     -- Retro colorschemes
    use('ap/vim-css-color')                                     -- CSS Color Preview

    -- Status Line Plugins --
    use('vim-airline/vim-airline')                              -- vim-airline Status bar
    use('vim-airline/vim-airline-themes')                       -- vim-airline-themes

    -- Editing Plugins --
    use('chun-yang/auto-pairs')                                 -- Auto Pairs Plugin
    use('scrooloose/nerdtree')                                  -- NERDTree Plugin
    use('airblade/vim-gitgutter')                               -- Vim gitgutter
    use('machakann/vim-highlightedyank')                        -- vim-highlightedyank
    use('preservim/tagbar')                                     -- Tagbar for code navigation
    use('romgrk/barbar.nvim')                                   -- Tabs plugin

    -- COC for Nvim --
    -- use {'neoclide/coc.nvim', branch = 'release'}

    -- -- LSP Plugins --
    -- use('neovim/nvim-lspconfig')                                -- Configurations for Nvim LSP
    -- use('hrsh7th/cmp-nvim-lsp')
    -- use('hrsh7th/cmp-buffer')
    -- use('hrsh7th/cmp-path')
    -- use('hrsh7th/cmp-cmdline')
    -- use('hrsh7th/nvim-cmp')

    -- -- For luasnip users.
    -- use('L3MON4D3/LuaSnip')
    -- use('saadparwaiz1/cmp_luasnip')

	if packer_bootstrap then
		packer.sync()
	end
end)
