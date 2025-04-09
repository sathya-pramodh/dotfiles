return {
	"tpope/vim-fugitive",
	keys = {
		{
			"<leader>gs",
			vim.cmd.Git,
			desc = "Fugitive - Open fugitive",
			mode = "n",
		},
	},
}
