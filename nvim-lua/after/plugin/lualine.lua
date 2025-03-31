if not vim.g.vscode then
	require("lualine").setup({
		options = {
			icons_enabled = true,
			component_separators = "|",
			section_separators = "",
		},
		sections = { lualine_c = { "lsp_progress" }, lualine_x = { "tabnine" } },
	})
end
