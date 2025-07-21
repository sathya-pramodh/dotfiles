return {
	{
		"echasnovski/mini.nvim",
		version = false,
		lazy = false,
		config = function()
			require("mini.icons").setup()

			require("mini.surround").setup({
				mappings = {
					add = "gsa",
					delete = "gsd",
					find = "gsf",
					find_left = "gsF",
					highlight = "gsh",
					replace = "gsr",
					update_n_lines = "gsn",
				},
			})
			require("mini.statusline").setup()
			require("mini.files").setup({
				mappings = {
					go_in_plus = "<CR>",
				},
			})
			require("mini.pairs").setup()
		end,
		keys = {
			{
				"<leader>e",
				function()
					local files = require("mini.files")
					local success = files.close()
					if not success then
						files.open()
					end
				end,
				desc = "Mini.Files - Toggle",
				mode = "n",
			},
		},
	},
}
