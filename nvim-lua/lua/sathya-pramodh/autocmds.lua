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
	-- api.nvim_create_autocmd("BufWritePost", {
	-- 	desc = "Restart automatically if changes are made to any config file",
	-- 	group = vim.api.nvim_create_augroup("cfg-auto-restart", { clear = true }),
	-- 	callback = function(args)
	-- 		local bufnr = args.buf
	-- 		local filepath = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(bufnr), ":p")

	-- 		local _, err = io.open(filepath, "r")
	-- 		if err ~= nil then
	-- 			return
	-- 		end

	-- 		if not vim.endswith(filepath, ".lua") and not vim.endswith(filepath, ".vim") then
	-- 			return
	-- 		end

	-- 		local config_path = vim.fn.stdpath("config")
	-- 		local real_config_path = vim.loop.fs_realpath(config_path)

	-- 		if not real_config_path then
	-- 			return
	-- 		end

	-- 		if not vim.startswith(filepath, real_config_path) then
	-- 			return
	-- 		end

	-- 		vim.cmd("restart")
	-- 	end,
	-- })
end
