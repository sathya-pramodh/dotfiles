local waywall = require("waywall")
local helpers = require("waywall.helpers")

local config = {
	input = {
		layout = "usda",
		sensitivity = 0.125,
		confine_pointer = false,
		remaps = {
			-- ["n", "f"],
			-- ["t", "o"],
			-- ["v", "b"],
			-- ["r", "oslash"],
			-- ["q", "l"],
			-- ["c", "u"],
			-- ["s", "h"],

			-- ["n"] = "f",
			-- ["f"] = "n",
			-- ["t"] = "o",
			-- ["o"] = "t",
			-- ["v"] = "b",
			-- ["b"] = "v",
			-- ["q"] = "l",
			-- ["l"] = "q",
			-- ["c"] = "u",
			-- ["u"] = "c",
			-- ["s"] = "h",
			-- ["h"] = "s",
		},
		repeat_delay = 185,
		repeat_rate = 30,
	},
	theme = {
		background = "#23273b",
		ninb_anchor = "topright",
		cursor_theme = "Adwaita-MC",
	},
	experimental = {
		jit = true,
		tearing = false,
	},
}

local is_ninb_running = function()
	return os.execute("pgrep -f 'NinjaBrain'")
end

local exec_ninb = function()
	helpers.toggle_floating()
	if not is_ninb_running() then
		waywall.exec("java -jar /home/pramodhsathya/Downloads/NinjaBrain/Ninjabrain-Bot-1.5.1.jar")
	end
end

local make_image = function(path, dst)
	local this = nil

	return function(enable)
		if enable and not this then
			this = waywall.image(path, dst)
		elseif this and not enable then
			this:close()
			this = nil
		end
	end
end

local make_mirror = function(options)
	local this = nil

	return function(enable)
		if enable and not this then
			this = waywall.mirror(options)
		elseif this and not enable then
			this:close()
			this = nil
		end
	end
end

local make_res = function(width, height, enable, disable)
	return function()
		local active_width, active_height = waywall.active_res()

		if active_width == width and active_height == height then
			waywall.set_resolution(0, 0)
			disable()
		else
			waywall.set_resolution(width, height)
			enable()
		end
	end
end

local mirrors = {
	eye_measure = make_mirror({
		src = { x = 130, y = 7902, w = 60, h = 580 },
		dst = { x = 0, y = 315, w = 800, h = 450 },
	}),

	f3_ecount = make_mirror({
		src = { x = 0, y = 36, w = 50, h = 11 },
		dst = { x = 530, y = 40, w = 240, h = 44 },
		color_key = {
			input = "#dddddd",
			output = "#ffffff",
		},
	}),

	thin_pie_blockentities = make_mirror({
		src = { x = 0, y = 595, w = 330, h = 180 },
		dst = { x = 1150, y = 600, w = 500, h = 200 },
		color_key = {
			input = "#ec6e4e",
			output = "#f25d38",
		},
	}),

	thin_pie_blockentities_percent = make_mirror({
		src = { x = 235, y = 779, w = 37, h = 17 },
		dst = { x = 1308, y = 784, w = 185, h = 100 },
		color_key = {
			input = "#E96D4D",
			output = "#FFFFFF",
		},
	}),

	thin_pie_unspecified = make_mirror({
		src = { x = 0, y = 595, w = 330, h = 180 },
		dst = { x = 1150, y = 600, w = 500, h = 200 },
		color_key = {
			input = "#46CE66",
			output = "#3eb85b",
		},
	}),

	thin_pie_entities = make_mirror({
		src = { x = 0, y = 595, w = 330, h = 180 },
		dst = { x = 1150, y = 600, w = 500, h = 200 },
		color_key = {
			input = "#E446C4",
			output = "#2e3440",
		},
	}),

	thin_pie_destroyProgress = make_mirror({
		src = { x = 0, y = 595, w = 330, h = 180 },
		dst = { x = 1150, y = 600, w = 500, h = 200 },
		color_key = {
			input = "#CC6C46",
			output = "#2e3440",
		},
	}),

	thin_pie_prepare = make_mirror({
		src = { x = 0, y = 595, w = 330, h = 180 },
		dst = { x = 1150, y = 600, w = 500, h = 200 },
		color_key = {
			input = "#464C46",
			output = "#2e3440",
		},
	}),
}

local images = {
	overlay = make_image("/home/pramodhsathya/Documents/overlay.png", {
		dst = { x = 0, y = 315, w = 800, h = 450 },
	}),
}

local show_mirrors = function(eye, f3, tall, thin)
	images.overlay(eye)
	mirrors.eye_measure(eye)

	mirrors.f3_ecount(f3)

	mirrors.thin_pie_blockentities(thin)
	mirrors.thin_pie_blockentities_percent(thin)
	mirrors.thin_pie_entities(thin)
	mirrors.thin_pie_unspecified(thin)
	mirrors.thin_pie_destroyProgress(thin)
end

local thin_enable = function()
	os.execute('echo "330x1000" > ~/.resetti_state')
	show_mirrors(false, true, false, true)
end

local tall_enable = function()
	os.execute('echo "320x1080" > ~/.resetti_state')
	os.execute("ratbagctl $(ratbagctl list | grep 'Logitech G304' | awk -F ':' '{print $1}') dpi set 200")
	show_mirrors(true, true, true, false)
end

local wide_enable = function()
	os.execute('echo "1920x320" > ~/.resetti_state')
	show_mirrors(false, false, false, false)
end

local tall_disable = function()
	os.execute('echo "1920x1080" > ~/.resetti_state')
	os.execute("ratbagctl $(ratbagctl list | grep 'Logitech G304' | awk -F ':' '{print $1}') dpi set 2500")
	show_mirrors(false, false, false, false)
end

local generic_disable = function()
	os.execute('echo "1920x1080" > ~/.resetti_state')
	show_mirrors(false, false, false, false)
end

local resolutions = {
	thin = make_res(330, 1000, thin_enable, generic_disable),
	tall = make_res(320, 16384, tall_enable, tall_disable),
	wide = make_res(1920, 320, wide_enable, generic_disable),
}

config.actions = {
	-- eye
	["J"] = resolutions.tall,
	-- thin
	["*-grave"] = resolutions.thin,
	-- wide
	["*-6"] = resolutions.wide,

	-- ninb bot
	["Shift-7"] = exec_ninb,
	-- ["J"] = toggle_floating,

	-- misc
	-- ["m1"] = atum_reset,
}

return config
