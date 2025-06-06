vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("x", "<leader>p", '"_dP')

--System-wide copy and paste registers by default.
vim.keymap.set("n", "y", '"+y')
vim.keymap.set("v", "y", '"+y')
vim.keymap.set("n", "Y", '"+Y')
vim.keymap.set("n", "p", '"+p')
vim.keymap.set("v", "p", '"+p')
vim.keymap.set("n", "P", '"+P')
vim.keymap.set("n", "d", '"+d')
vim.keymap.set("v", "d", '"+d')
vim.keymap.set("n", "D", '"+D')
vim.keymap.set("n", "c", '"+c')
vim.keymap.set("v", "c", '"+c')
vim.keymap.set("n", "C", '"+C')
vim.keymap.set("n", "x", '"+x')
vim.keymap.set("v", "x", '"+x')
vim.keymap.set("n", "X", '"+X')

if not vim.g.vscode then
	--Split remaps
	vim.keymap.set("n", "<C-H>", "<C-W><C-H>")
	vim.keymap.set("n", "<C-J>", "<C-W><C-J>")
	vim.keymap.set("n", "<C-K>", "<C-W><C-K>")
	vim.keymap.set("n", "<C-L>", "<C-W><C-L>")
end

vim.keymap.set("t", "<leader><leader>", "<C-\\><C-n>", { desc = "Terminal - Go to normal mode" })
local term_win_id = nil

vim.keymap.set("n", "<leader>`", function()
	if term_win_id and vim.api.nvim_win_is_valid(term_win_id) then
		vim.api.nvim_set_current_win(term_win_id)
		vim.cmd("startinsert")
		return
	end

	vim.cmd("botright 15split")
	vim.cmd("terminal")
	vim.cmd("startinsert")

	term_win_id = vim.api.nvim_get_current_win()
end, { desc = "Terminal - Focus or open dedicated terminal window" })

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
