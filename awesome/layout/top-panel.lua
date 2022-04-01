local awful = require('awful')
local beautiful = require('beautiful')
local wibox = require('wibox')
local TaskList = require('widget.task-list')
local TagList = require('widget.tag-list')
local gears = require('gears')
local clickable_container = require('widget.material.clickable-container')
local mat_icon_button = require('widget.material.icon-button')
local mat_icon = require('widget.material.icon')
local dpi = require('beautiful').xresources.apply_dpi
local icons = require('theme.icons')
local apps = require('..configuration.apps')

-- Titus - Horizontal Tray
local systray = wibox.widget.systray()
  systray:set_horizontal(true)
  systray:set_base_size(20)
  systray.forced_height = 20

  -- Clock / Calendar 24h format
-- local textclock = wibox.widget.textclock('<span font="Roboto Mono bold 9">%d.%m.%Y\n     %H:%M</span>')
-- Clock / Calendar 12AM/PM fornat
local textclock = wibox.widget.textclock('<span font="Hack Nerd Font 12">%I:%M %p</span>')
-- textclock.forced_height = 36

-- Add a calendar (credits to kylekewley for the original code)
local month_calendar = awful.widget.calendar_popup.month({
  screen = s,
  start_sunday = false,
  week_numbers = true
})
month_calendar:attach(textclock)

local clock_widget = wibox.container.margin(textclock, dpi(13), dpi(13), dpi(9), dpi(8))
local battery_widget = awful.widget.watch('bash -c "~/.config/awesome/scripts/battery"', 10)
battery_widget:connect_signal("button::press", function() awful.spawn("bash -c tuxedo-control-center") end)
local kernelver = awful.widget.watch('bash -c ~/.config/awesome/scripts/kernelver', null)
kernelver:connect_signal("button::press", function() awful.spawn(apps.default.terminal) end)
local cpu = awful.widget.watch('bash -c ~/.config/awesome/scripts/cpu', 1)
cpu:connect_signal("button::press", function() awful.spawn(apps.default.terminal .. " -e htop") end)
local gpu = awful.widget.watch('bash -c ~/.config/awesome/scripts/gpu', 1)
gpu:connect_signal("button::press", function() awful.spawn("bash -c nvidia-settings") end)
local freemem = awful.widget.watch('bash -c ~/.config/awesome/scripts/freemem', 1)
freemem:connect_signal("button::press", function() awful.spawn(apps.default.terminal .. " -e htop") end)
local powerbutton = wibox.widget.imagebox(icons.power)
powerbutton:connect_signal("button::press", function()
  _G.exit_screen_show()
end)
local powerbutton_widget = wibox.container.margin(powerbutton, dpi(8), dpi(8), dpi(8), dpi(8))

local add_button = mat_icon_button(mat_icon(icons.plus, dpi(24)))
add_button:buttons(
  gears.table.join(
    awful.button(
      {},
      1,
      nil,
      function()
        awful.spawn(
          awful.screen.focused().selected_tag.defaultApp,
          {
            tag = _G.mouse.screen.selected_tag,
            placement = awful.placement.bottom_right
          }
        )
      end
    )
  )
)

-- Create an imagebox widget which will contains an icon indicating which layout we're using.
-- We need one layoutbox per screen.
local LayoutBox = function(s)
  local layoutBox = clickable_container(awful.widget.layoutbox(s))
  layoutBox:buttons(
    awful.util.table.join(
      awful.button(
        {},
        1,
        function()
          awful.layout.inc(1)
        end
      ),
      awful.button(
        {},
        3,
        function()
          awful.layout.inc(-1)
        end
      ),
      awful.button(
        {},
        4,
        function()
          awful.layout.inc(1)
        end
      ),
      awful.button(
        {},
        5,
        function()
          awful.layout.inc(-1)
        end
      )
    )
  )
  return layoutBox
end

local TopPanel = function(s)
  
    local panel =
    wibox(
    {
      ontop = true,
      screen = s,
      height = dpi(32),
      width = s.geometry.width,
      x = s.geometry.x,
      y = s.geometry.y,
      stretch = false,
      bg = beautiful.background.hue_800,
      fg = beautiful.fg_normal,
      struts = {
        top = dpi(32)
      },
      opacity = 0.85,
    }
    )

    panel:struts(
      {
        top = dpi(32)
      }
    )

    panel:setup {
      layout = wibox.layout.align.horizontal,
      {
        layout = wibox.layout.fixed.horizontal,
        -- Create a taglist widget
        arch_widget,
        TagList(s),
        TaskList(s),
        add_button
      },
      nil,
      {
        layout = wibox.layout.fixed.horizontal,
        -- Clock
        clock_widget,
        cpu,
        gpu,
        freemem,
        kernelver,
        wibox.container.margin(systray, dpi(3), dpi(3), dpi(6), dpi(3)),
        -- Layout box
        LayoutBox(s),
        -- Battery
        battery_widget,
        powerbutton_widget,
      }
    }

  return panel
end

return TopPanel
