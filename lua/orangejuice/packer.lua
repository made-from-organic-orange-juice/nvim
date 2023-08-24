-- This file can be loaded by calling `lua require('plugins')` from your init.vim

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- https://github.com/nvim-telescope/telescope.nvim
	-- fuzzy finder
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- my color theme
	use { "ellisonleao/gruvbox.nvim" }

	-- treesitter for highligting and all that https://github.com/nvim-treesitter/nvim-treesitter
	use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})

	-- undo tree
	use('mbbill/undotree')

	-- vim fugitive git plugin
	use('tpope/vim-fugitive')

	-- LSP Zero
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{'williamboman/mason.nvim'},           -- Optional
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},     -- Required
			{'hrsh7th/cmp-nvim-lsp'}, -- Required
			{'L3MON4D3/LuaSnip'},     -- Required
		}
	}

    -- copilot
    use { "zbirenbaum/copilot.lua" }

    -- null-ls for lsp and formatting
    use { "jose-elias-alvarez/null-ls.nvim" }

    -- file explorer
    use { "nvim-tree/nvim-tree.lua" }
    use { "kyazdani42/nvim-web-devicons" }


end)
--
