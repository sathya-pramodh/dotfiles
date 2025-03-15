if not vim.g.vscode then
    local lsp = require('lsp-zero')

    lsp.preset('recommended')
    lsp.ensure_installed({ 'eslint', 'rust_analyzer' })

    local cmp = require('cmp')
    local cmp_select = { behaviour = cmp.SelectBehavior.Select }
    local cmp_mappings = lsp.defaults.cmp_mappings({
        ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    })
    cmp.setup({
        mapping = {
            ['<CR>'] = cmp.mapping.confirm({ select = false }),
        }
    })
    lsp.set_preferences({ sign_icons = {} })
    lsp.on_attach(function(client, bufnr)
        local opts = function(desc) return { buffer = bufnr, remap = false, desc = desc } end
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts("LSP - Goto definition"))
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts("LSP - Hover symbol"))
        vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts("LSP - Workspace symbol"))
        vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end,
            opts("LSP - Open floating diagnostic"))
        vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts("LSP - Goto next diagnostic"))
        vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts("LSP - Goto previous diagnostic"))
        vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts("LSP - Code action"))
        vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts("LSP - References"))
        vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts("LSP - Rename symbol"))
        vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts("LSP - Signature help"))
    end)
    -- vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]
    lsp.setup()

    vim.diagnostic.config({
        virtual_text = true,
    })
end
