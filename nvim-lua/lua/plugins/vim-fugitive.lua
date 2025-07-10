return {
	"tpope/vim-fugitive",
	lazy = false,
	keys = {
		{
			"<leader>gs",
			vim.cmd.Git,
			desc = "Fugitive - Open fugitive",
			mode = "n",
		},
	},
}
