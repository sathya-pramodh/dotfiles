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
			builtin.live_grep,
			desc = "Telescope - Grep string",
		},
	},
}
