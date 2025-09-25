return {
	"saghen/blink.cmp",
	event = "VimEnter",
	version = "1.*",
	dependencies = {
		{
			"L3MON4D3/LuaSnip",
			version = "2.*",
			build = (function()
				if vim.fn.has("win32") == 1 or vim.fn.executable("make") == 0 then
					return
				end
				return "make install_jsregexp"
			end)(),
			dependencies = {},
			opts = {},
		},
		"folke/lazydev.nvim",
		"supermaven-inc/supermaven-nvim",
		{
			"saghen/blink.compat",
			version = "event",
			opts = {
				enable_events = true,
			},
		},
	},
	opts = {
		keymap = {
			preset = "default",
			["<Enter>"] = { "accept", "fallback" },
			["<Tab>"] = { "select_next", "fallback" },
			["<S-Tab>"] = { "select_prev", "fallback" },
		},

		appearance = {
			nerd_font_variant = "mono",
		},

		completion = {
			documentation = { auto_show = true, auto_show_delay_ms = 500 },
		},

		sources = {
			default = { "lsp", "path", "snippets", "lazydev" },
			providers = {
				lazydev = { module = "lazydev.integrations.blink", score_offset = 100 },
				-- supermaven = {
				-- 	name = "supermaven",
				-- 	module = "blink.compat.source",
				-- 	score_offset = 200,
				-- 	enabled = true,
				-- 	async = true,
				-- },
			},
		},

		snippets = { preset = "luasnip" },

		fuzzy = { implementation = "lua" },

		signature = { enabled = true },
	},
}
