local neotree = require("neo-tree")
vim.keymap.set("n", "<leader>e", function()
    vim.cmd("NeoTreeShowToggle")
end)
neotree.setup({ event_handlers = { { event = "neo_tree_buffer_enter",
    handler = function(_) vim.opt_local.signcolumn = "auto" end } } })
