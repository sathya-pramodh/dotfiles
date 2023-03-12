if not vim.g.vscode then
    local api = vim.api
    api.nvim_create_autocmd("FileType",
        { pattern = "cpp",
            command = "lua vim.keymap.set('n', '<F5>', ':!g++ -O2 -Wall -std=c++20 % -o %:r && cat input.txt | ./%:r > output.txt<CR>')" })
    api.nvim_create_autocmd("FileType",
        { pattern = "python",
            command = "lua vim.keymap.set('n', '<F5>', ':!cat input.txt | python3 % > output.txt<CR>')" })
end
