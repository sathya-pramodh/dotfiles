function Color(color)
    if not vim.g.vscode then
        color = color or "nordfox"
        vim.cmd.colorscheme(color)
    end

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

Color()
