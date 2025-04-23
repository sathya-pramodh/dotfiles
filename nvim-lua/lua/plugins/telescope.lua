local builtin = require("telescope.builtin")
return {
	"nvim-telescope/telescope.nvim",
	dependencies = { { "nvim-lua/plenary.nvim" } },
	keys = {
		{
			"<C-F>",
			builtin.find_files,
			desc = "Telescope - Find files",
			mode = "n",
		},
		{
			"<C-p>",
			builtin.git_files,
			desc = "Telescope - Git files",
			mode = "n",
		},
		{
			"<C-s>",
			function()
				builtin.grep_string({ search = vim.fn.input("Grep > ") })
			end,
			desc = "Telescope - Grep string",
		},
	},
}
