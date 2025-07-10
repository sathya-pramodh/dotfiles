return {
	"kawre/leetcode.nvim",
	lazy = leet_arg ~= vim.fn.argv(0, -1),
	cmd = "Leet",
	-- build = ":TSUpdate html",
	dependencies = {
		"nvim-telescope/telescope.nvim",
		-- "ibhagwan/fzf-lua",
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
	},
	opts = {
		injector = {
			["python3"] = {
				before = true,
			},
			["cpp"] = {
				before = { "#include <bits/stdc++.h>", "using namespace std;" },
				after = "int main() {}",
			},
			["java"] = {
				before = "import java.util.*;",
			},
		},
	},
}
