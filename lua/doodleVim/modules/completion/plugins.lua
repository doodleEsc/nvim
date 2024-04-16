local completion = {}
local conf = require("doodleVim.modules.completion.config")

completion["hrsh7th/nvim-cmp"] = {
	event = "InsertEnter",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"saadparwaiz1/cmp_luasnip",
		"FelipeLema/cmp-async-path",
		"doodleEsc/cmp-look",
		"hrsh7th/cmp-cmdline",
		"ray-x/cmp-treesitter",
		"lukas-reineke/cmp-under-comparator",
		"rafamadriz/friendly-snippets",
		"windwp/nvim-autopairs",
		"mortepau/codicons.nvim",
		"onsails/lspkind.nvim",
		{ "danymat/neogen", lazy = true, config = conf.neogen },
		{ "L3MON4D3/LuaSnip", lazy = true, version = "1.2.*", config = conf.luasnip },
		{ "zbirenbaum/copilot-cmp", lazy = true, config = conf.copilot_cmp },
		{
			"zbirenbaum/copilot.lua",
			lazy = true,
			cmd = "Copilot",
			config = conf.copilot,
			init = function()
				vim.g.copilot_proxy = "127.0.0.1:7890"
			end,
		},
	},
	config = conf.nvim_cmp,
}

return completion
