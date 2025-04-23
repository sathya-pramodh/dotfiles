return {
	"folke/trouble.nvim",
	opts = { auto_open = false }, -- for default options, refer to the configuration section for custom setup.
	cmd = "Trouble",
	keys = {
		{
			"<leader>tt",
			function()
				require("trouble").toggle({ mode = "diagnostics", auto_open = false })
			end,
			desc = "Trouble - Toggle trouble diagnostic",
		},
		{
			"]t",
			function()
				require("trouble").next({
					skip_groups = true,
					jump = true,
					mode = "diagnostics",
				}, {})
			end,
			desc = "Trouble - Next diagnostic",
		},
		{
			"[t",
			function()
				require("trouble").prev({
					skip_groups = true,
					jump = true,
					mode = "diagnostics",
				}, {})
			end,
			desc = "Trouble - Previous diagnostic",
		},
	},
}
