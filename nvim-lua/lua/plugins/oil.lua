return {
	"stevearc/oil.nvim",
	opts = {},
	dependencies = { { "echasnovski/mini.icons", opts = {} } },
	lazy = false,
	keys = {
		{
			"<leader>e",
			function()
				local oil = require("oil")
				oil.toggle_float(".")
			end,
			desc = "Oil: Toggle",
		},
	},
}
