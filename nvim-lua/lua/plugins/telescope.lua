return {
	"nvim-telescope/telescope.nvim",
	dependencies = { { "nvim-lua/plenary.nvim" } },
	config = function()
		if not vim.g.vscode then
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<C-F>", builtin.find_files, { desc = "Telescope - Find files" })
			vim.keymap.set("n", "<C-p>", builtin.git_files, { desc = "Telescope - Git files" })
			vim.keymap.set("n", "<C-s>", function()
				builtin.grep_string({ search = vim.fn.input("Grep > ") })
			end, { desc = "Telescope - Grep string" })
		end
	end,
}
