local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

return {
	"theprimeagen/harpoon",
	keys = {
		{
			"<leader>a",
			mark.add_file,
			desc = "Harpoon - Add file",
			mode = "n",
		},
		{
			"<leader><C-w>",
			ui.toggle_quick_menu,
			desc = "Harpoon - Open toggle menu",
			mode = "n",
		},
		{
			"<leader>q",
			function()
				ui.nav_file(1)
			end,
			desc = "Harpoon - Nav File 1",
			mode = "n",
		},
		{
			"<leader>w",
			function()
				ui.nav_file(2)
			end,
			desc = "Harpoon - Nav File 2",
			mode = "n",
		},
		{
			"<leader>r",
			function()
				ui.nav_file(3)
			end,
			desc = "Harpoon - Nav File 3",
			mode = "n",
		},
		{
			"<leader>t",
			function()
				ui.nav_file(4)
			end,
			desc = "Harpoon - Nav File 4",
			mode = "n",
		},
	},
}
