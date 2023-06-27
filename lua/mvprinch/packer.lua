-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	use({
		"folke/tokyonight.nvim",
		as = "tokyonight",
		config = function()
			vim.cmd("colorscheme tokyonight")
		end,
	})

	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })

	use("nvim-treesitter/playground")
	use("theprimeagen/harpoon")
	use("mbbill/undotree")
	use("tpope/vim-fugitive")
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})
	use({
		"lewis6991/gitsigns.nvim",
		-- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
	})
	use({
		"nvim-tree/nvim-web-devicons",
	})
	use({ "romgrk/barbar.nvim", wants = "nvim-web-devicons" })
	use({
		"nvim-tree/nvim-tree.lua",
		requires = {
			"nvim-tree/nvim-web-devicons", -- optional, for file icons
		},
		tag = "nightly", -- optional, updated every week. (see issue #1193)
	})
	use("terrortylor/nvim-comment")
	use("windwp/nvim-ts-autotag")
	use("JoosepAlviste/nvim-ts-context-commentstring")
	use("jose-elias-alvarez/null-ls.nvim")
	use("p00f/nvim-ts-rainbow")
	use("norcalli/nvim-colorizer.lua")
	use("justinmk/vim-sneak")
	use("unblevable/quick-scope")
	use("andweeb/presence.nvim")
	use("jose-elias-alvarez/typescript.nvim")
	use("tpope/vim-surround")
	use("filipdutescu/renamer.nvim", {
		branch = "master",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use("jiangmiao/auto-pairs")
	use("sindrets/diffview.nvim", {
		requires = "nvim-lua/plenary.nvim",
	})
	-- LSP support
	use("neovim/nvim-lspconfig")
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")

	-- Autocompletion
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("saadparwaiz1/cmp_luasnip")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-nvim-lua")
	use("L3MON4D3/LuaSnip")
	use({
		"glepnir/lspsaga.nvim",
		branch = "main",
		requires = {
			{ "nvim-tree/nvim-web-devicons" },
			{ "nvim-treesitter/nvim-treesitter" },
		},
	})
	use("onsails/lspkind.nvim")
end)
