if not vim.g.vscode then
	vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "Undotree - Toggle undotree" })
end
