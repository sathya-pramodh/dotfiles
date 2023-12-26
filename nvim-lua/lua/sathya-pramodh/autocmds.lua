if not vim.g.vscode then
    local api = vim.api
    local compileAndRun = api.nvim_create_augroup("compileandrun", { clear = true })
    api.nvim_create_autocmd("FileType",
        {
            pattern = "cpp",
            group = compileAndRun,
            command =
            "lua vim.keymap.set('n', '<F5>', ':!g++ -O2 -Wall -std=c++20 % -o %:r && %:r<CR>')"
        })
    api.nvim_create_autocmd("FileType",
        {
            pattern = "python",
            group = compileAndRun,
            command = "lua vim.keymap.set('n', '<F5>', ':!cat input.txt | python3 % > output.txt<CR>')"
        })
end
