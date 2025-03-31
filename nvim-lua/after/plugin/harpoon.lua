if not vim.g.vscode then
	local mark = require("harpoon.mark")
	local ui = require("harpoon.ui")

	vim.keymap.set("n", "<leader>a", mark.add_file, { desc = "Harpoon - Add file" })
	vim.keymap.set("n", "<leader><C-w>", ui.toggle_quick_menu, { desc = "Harpoon - Open toggle menu" })

	vim.keymap.set("n", "<leader>q", function()
		ui.nav_file(1)
	end, { desc = "Harpoon - Nav File 1" })
	vim.keymap.set("n", "<leader>w", function()
		ui.nav_file(2)
	end, { desc = "Harpoon - Nav File 2" })
	vim.keymap.set("n", "<leader>r", function()
		ui.nav_file(3)
	end, { desc = "Harpoon - Nav File 3" })
	vim.keymap.set("n", "<leader>t", function()
		ui.nav_file(4)
	end, { desc = "Harpoon - Nav File 4" })
end
