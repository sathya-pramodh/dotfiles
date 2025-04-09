return {
	"folke/which-key.nvim",
	config = function(_, opts)
		vim.o.timeout = true
		vim.o.timeoutlen = 300
		require("which-key").setup(opts)
	end,
}
