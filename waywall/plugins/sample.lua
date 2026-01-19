return {
	url = "https://example.com/author/sample",
	name = "sample",
	config = function()
		print(require("sample.init")._loaded)
	end,
	update_on_load = true,
	dependencies = {
		{
			url = "https://example.com/author/sample2",
			name = "sample2",
			config = function()
				print(require("sample2.init")._sample2)
			end,
		},
	},
}
