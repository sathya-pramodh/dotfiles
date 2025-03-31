if not vim.g.vscode then
	vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "Fugitive - Open fugitive" })
end
