return {
	--{
	--	"folke/tokyonight.nvim",
	--	lazy = false,
	--	priority = 1000,
	--	config = function()
	--		vim.cmd([[colorscheme tokyonight]])
	--	end,
	--},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			vim.cmd([[colorscheme rose-pine]])
		end
	},
	{
		"nvim-telescope/telescope.nvim",
		lazy = false,
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" }
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local configs = require("nvim-treesitter.configs")

			configs.setup({
				ensure_installed = { "c", "lua", "vim", "vimdoc", "sql", "javascript", "html", "python" },
				sync_install = false,
				highlight = { enable = true },
				indent = { enable = true },
			})
		end,
	},
	{ "mbbill/undotree" },
	{ "tpope/vim-fugitive"	},
	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			"neovim/nvim-lspconfig",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/nvim-cmp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-nvim-lua",
			"saadparwaiz1/cmp_luasnip",
			"L3MON4D3/LuaSnip",
			"rafamadriz/friendly-snippets"
		}
	}
}



