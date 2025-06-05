if not vim.g.vscode then
	local api = vim.api
	local compileAndRun = api.nvim_create_augroup("compileandrun", { clear = true })
	api.nvim_create_autocmd("FileType", {
		pattern = "cpp",
		group = compileAndRun,
		command = "lua vim.keymap.set('n', '<F5>', ':!g++ -O2 -Wall -std=c++20 % -o %:r && %:r<CR>')",
	})
	api.nvim_create_autocmd("FileType", {
		pattern = "python",
		group = compileAndRun,
		command = "lua vim.keymap.set('n', '<F5>', ':!cat input.txt | python3 % > output.txt<CR>')",
	})
	api.nvim_create_autocmd("TextYankPost", {
		desc = "Highlight when yanking (copying) text",
		group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
		callback = function()
			vim.hl.on_yank()
		end,
	})
end
