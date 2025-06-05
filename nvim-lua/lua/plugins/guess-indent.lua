return {
	"NMAC427/guess-indent.nvim",
	config = function()
		if not vim.g.vscode then
			require("guess-indent").setup({})
		end
	end,
}
