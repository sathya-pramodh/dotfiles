if not vim.g.vscode then
	vim.keymap.set("n", "<leader>2", function()
		vim.cmd([[cn]])
	end, { desc = "Quickfix - Next Quickfix" })
	vim.keymap.set("n", "<leader>1", function()
		vim.cmd([[cp]])
	end, { desc = "Quickfix - Previous Quickfix" })
	vim.keymap.set("n", "<leader><Tab>", function()
		vim.cmd([[copen]])
	end, { desc = "Quickfix - Open Quickfix Window" })
end
