# Copyright (c) 2010 Aldo Cortesi
# Copyright (c) 2010, 2015 dequis
# Copyright (c) 2012 Randall Ma
# Copyright (c) 2012-2015 Tycho Andersen
# Copyright (c) 2012 Craig Barnes
# Copyright (c) 2013 horsik
# Copyright (c) 2013 Tao Sauvage
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

from typing import List  # noqa: F401

from libqtile import bar, layout, widget, extension, qtile, hook
from libqtile.config import Click, Drag, Group, Key, Match, Screen
from libqtile.lazy import lazy
from libqtile.utils import guess_terminal
import os
import subprocess

mod = "mod4"
terminal = guess_terminal()
brave_cmd = "brave"
zoom_cmd = "zoom"
suspend_cmd = "systemctl suspend"
nautilus_cmd = "nautilus"
screenshot_cmd = "screenshot select"

keys = [
    # A list of available commands that can be bound to keys can be found
    # at https://docs.qtile.org/en/latest/manual/config/lazy.html
    # Switch between windows
    Key([mod], "h", lazy.layout.left(), desc="Move focus to left"),
    Key([mod], "l", lazy.layout.right(), desc="Move focus to right"),
    Key([mod], "j", lazy.layout.down(), desc="Move focus down"),
    Key([mod], "k", lazy.layout.up(), desc="Move focus up"),
    Key([mod], "space", lazy.layout.next(), desc="Move window focus to other window"),
    # Move windows between left/right columns or move up/down in current stack.
    # Moving out of range in Columns layout will create new column.
    Key(
        [mod, "shift"], "h", lazy.layout.shuffle_left(), desc="Move window to the left"
    ),
    Key(
        [mod, "shift"],
        "l",
        lazy.layout.shuffle_right(),
        desc="Move window to the right",
    ),
    Key([mod, "shift"], "j", lazy.layout.shuffle_down(), desc="Move window down"),
    Key([mod, "shift"], "k", lazy.layout.shuffle_up(), desc="Move window up"),
    # Grow windows. If current window is on the edge of screen and direction
    # will be to screen edge - window would shrink.
    Key([mod, "control"], "h", lazy.layout.grow_left(), desc="Grow window to the left"),
    Key(
        [mod, "control"], "l", lazy.layout.grow_right(), desc="Grow window to the right"
    ),
    Key([mod, "control"], "j", lazy.layout.grow_down(), desc="Grow window down"),
    Key([mod, "control"], "k", lazy.layout.grow_up(), desc="Grow window up"),
    Key([mod], "n", lazy.layout.normalize(), desc="Reset all window sizes"),
    # Toggle between split and unsplit sides of stack.
    # Split = all windows displayed
    # Unsplit = 1 window displayed, like Max layout, but still with
    # multiple stack panes
    Key(
        [mod, "shift"],
        "Return",
        lazy.layout.toggle_split(),
        desc="Toggle between split and unsplit sides of stack",
    ),
    Key([mod, "shift"], "Return", lazy.spawn(terminal), desc="Launch terminal"),
    # Toggle between different layouts as defined below
    Key([mod], "Tab", lazy.next_layout(), desc="Toggle between layouts"),
    Key([mod, "shift"], "c", lazy.window.kill(), desc="Kill focused window"),
    Key([mod, "control"], "r", lazy.reload_config(), desc="Reload the config"),
    Key([mod, "shift"], "q", lazy.shutdown(), desc="Shutdown Qtile"),
    Key(
        [mod],
        "p",
        lazy.run_extension(
            extension.DmenuRun(
                dmenu_prompt="$",
                font="Hack Nerd Font",
                fontsize=14,
                dmenu_lines=10,
                background="#2e3440",
                selected_background="#81a1c1",
            )
        ),
        desc="Launch dmenu",
    ),
    Key([mod, "shift"], "b", lazy.spawn(brave_cmd), desc="Launch brave"),
    Key([mod, "control"], "z", lazy.spawn(zoom_cmd), desc="Launch zoom"),
    Key([mod, "control"], "s", lazy.spawn(suspend_cmd), desc="Suspend"),
    Key([mod, "shift"], "f", lazy.spawn(nautilus_cmd), desc="Launch nautilus"),
    Key(
        [mod, "shift"],
        "s",
        lazy.spawn(screenshot_cmd),
        desc="Screenshot part of the screen",
    ),
]

zoom_match = Match(wm_instance_class="zoom")
brave_match = Match(wm_instance_class="brave-browser")
obs_match = Match(wm_instance_class="obs")
steam_match = Match(wm_instance_class="Steam")
discord_match = Match(wm_instance_class="discord")
tlauncher_match = Match(title="V TLauncher")
groups = [
    Group("1"),
    Group("2", matches=[zoom_match], layout="floating"),
    Group("3", matches=[brave_match]),
    Group("4"),
    Group("5", matches=[steam_match]),
    Group("6", matches=[obs_match], layout="floating", layouts=[layout.Floating()]),
    Group("7", matches=[tlauncher_match], layout="floating"),
    Group("8", matches=[discord_match]),
    Group("9"),
]

for i in groups:
    keys.extend(
        [
            # mod1 + letter of group = switch to group
            Key(
                [mod],
                i.name,
                lazy.group[i.name].toscreen(),
                desc="Switch to group {}".format(i.name),
            ),
            # mod1 + shift + letter of group = switch to & move focused window to group
            Key(
                [mod, "shift"],
                i.name,
                lazy.window.togroup(i.name, switch_group=True),
                desc="Switch to & move focused window to group {}".format(i.name),
            ),
            # Or, use below if you prefer not to switch to that group.
            # # mod1 + shift + letter of group = move focused window to group
            # Key([mod, "shift"], i.name, lazy.window.togroup(i.name),
            #     desc="move focused window to group {}".format(i.name)),
        ]
    )

layouts = [
    layout.Max(),
    layout.Floating(),
    layout.Columns(border_focus_stack=["#d75f5f", "#8f3d3d"], border_width=4),
    # Try more layouts by unleashing below layouts.
    # layout.Stack(num_stacks=2),
    # layout.Bsp(),
    # layout.Matrix(),
    # layout.MonadTall(),
    # layout.MonadWide(),
    # layout.RatioTile(),
    layout.Tile(),
    # layout.TreeTab(),
    layout.VerticalTile(),
    # layout.Zoomy(),
]

widget_defaults = dict(
    font="sans",
    fontsize=12,
    padding=3,
)
extension_defaults = widget_defaults.copy()

screens = [
    Screen(
        top=bar.Bar(
            [
                widget.Prompt(font="Hack Nerd Font", fontsize=15, foreground="ff0000"),
                widget.Sep(
                    linewidth=1,
                    padding=5,
                ),
                widget.GroupBox(
                    font="Hack Nerd Font",
                    fontsize=15,
                    active="#bf6f6a",
                    inactive="eceff4",
                ),
                widget.Sep(
                    linewidth=3,
                    padding=15,
                ),
                widget.CurrentLayout(
                    font="Hack Nerd Font",
                    fontsize=15,
                    foreground="d08770",
                    background="2e3440",
                ),
                widget.Sep(
                    linewidth=3,
                    padding=15,
                ),
                widget.WindowName(
                    font="Hack Nerd Font",
                    fontsize=15,
                    max_chars=20,
                    foreground="#81a1c1",
                ),
                widget.Clock(
                    font="Hack Nerd Font",
                    fontsize=15,
                    format="%I:%M%p",
                    foreground="eceff4",
                ),
                widget.Spacer(length=bar.STRETCH),
                widget.CPU(
                    font="Hack Nerd Font",
                    fontsize=15,
                    format=" CPU: {load_percent}%",
                    foreground="#88c0d0",
                    update_interval=1,
                    mouse_callbacks={
                        "Button1": lambda: qtile.cmd_spawn(terminal + " -e htop"),
                    },
                ),
                widget.Sep(
                    linewidth=3,
                    padding=15,
                ),
                widget.NvidiaSensors(
                    font="Hack Nerd Font",
                    fontsize=15,
                    format=" GPU: {temp}°C",
                    foreground="#ebcb8b",
                    update_interval=1,
                    mouse_callbacks={
                        "Button1": lambda: qtile.cmd_spawn("nvidia-settings"),
                    },
                ),
                widget.Sep(
                    linewidth=3,
                    padding=15,
                ),
                widget.Memory(
                    font="Hack Nerd Font",
                    fontsize=15,
                    format=" Mem:{MemUsed: .0f}{mm}/{MemTotal: .0f}{mm}",
                    foreground="a3be8c",
                    update_interval=1,
                    mouse_callbacks={
                        "Button1": lambda: qtile.cmd_spawn(terminal + " -e htop"),
                    },
                ),
                widget.Chord(
                    chords_colors={
                        "launch": ("#ff0000", "#ffffff"),
                    },
                    name_transform=lambda name: name.upper(),
                ),
                widget.Sep(
                    linewidth=3,
                    padding=15,
                ),
                widget.Wlan(
                    font="Hack Nerd Font",
                    fontsize=15,
                    interface="wlo1",
                    format="  {essid}",
                    disconnected_message="睊",
                    foreground="ebcb8b",
                    mouse_callbacks={
                        "Button1": lambda: qtile.cmd_spawn(
                            terminal + " -e sudo wifi-menu"
                        )
                    },
                ),
                widget.Sep(
                    linewidth=3,
                    padding=15,
                ),
                widget.GenPollText(
                    update_interval=0,
                    func=lambda: subprocess.check_output(
                        "/home/pramodhsathya/windowmanagers/dotfiles/qtile/scripts/kernelver.sh"
                    )
                    .strip()
                    .decode("utf-8"),
                    font="Hack Nerd Font",
                    fontsize=15,
                    foreground="a3be8c",
                ),
                widget.Sep(
                    linewidth=3,
                    padding=15,
                ),
                widget.Volume(
                    font="Hack Nerd Font",
                    fontsize=15,
                    volume_up_cmd=["amixer", "-q", "set", "Master", "5%+"],
                    volume_down_cmd=["amixer", "-q", "set", "Master", "5%-"],
                    foreground="88c0d0",
                    mouse_callbacks={
                        "Button1": lambda: qtile.cmd_spawn("pavucontrol"),
                    },
                ),
                widget.Sep(
                    linewidth=3,
                    padding=15,
                ),
                widget.GenPollText(
                    update_interval=5,
                    func=lambda: subprocess.check_output(
                        "/home/pramodhsathya/windowmanagers/dotfiles/qtile/scripts/battery.sh"
                    )
                    .strip()
                    .decode("utf-8"),
                    font="Hack Nerd Font",
                    fontsize=15,
                    foreground="a3be8c",
                ),
                # widget.BatteryIcon(
                # font="Hack Nerd Font",
                # fontsize=15,
                # update_interval=5,
                # foreground="a3be8c",
                # ),
                # widget.Battery(
                # font="Hack Nerd Font",
                # fontsize=15,
                # format="{percent:2.0%}",
                # update_interval=5,
                # foreground="a3be8c",
                # ),
                widget.Sep(
                    linewidth=1,
                    padding=5,
                ),
                widget.Systray(font="Hack Nerd Font", fontsize=15),
            ],
            26,
            background="#2e3440",
            opacity=0.81,
            # border_width=[2, 0, 2, 0],  # Draw top and bottom borders
            # border_color=["ff00ff", "000000", "ff00ff", "000000"],  # Borders are magenta
        ),
    ),
]

# Drag floating layouts.
mouse = [
    Drag(
        [mod],
        "Button1",
        lazy.window.set_position_floating(),
        start=lazy.window.get_position(),
    ),
    Drag(
        [mod], "Button3", lazy.window.set_size_floating(), start=lazy.window.get_size()
    ),
    Click([mod], "Button2", lazy.window.bring_to_front()),
]

dgroups_key_binder = None
dgroups_app_rules = []  # type: List
follow_mouse_focus = True
bring_front_click = False
cursor_warp = False
floating_layout = layout.Floating(
    float_rules=[
        # Run the utility of `xprop` to see the wm class and name of an X client.
        *layout.Floating.default_float_rules,
        Match(wm_class="confirmreset"),  # gitk
        Match(wm_class="makebranch"),  # gitk
        Match(wm_class="maketag"),  # gitk
        Match(wm_class="ssh-askpass"),  # ssh-askpass
        Match(title="branchdialog"),  # gitk
        Match(title="pinentry"),  # GPG key password entry
        Match(wm_instance_class="obs"),
    ]
)
auto_fullscreen = True
focus_on_window_activation = "smart"
reconfigure_screens = True

# If things like steam games want to auto-minimize themselves when losing
# focus, should we respect this or not?
auto_minimize = True


@hook.subscribe.startup_once
def autostart():
    home = os.path.expanduser("~/.config/qtile/autostart.sh")
    subprocess.run([home])

# XXX: Gasp! We're lying here. In fact, nobody really uses or cares about this
# string besides java UI toolkits; you can see several discussions on the
# mailing lists, GitHub issues, and other WM documentation that suggest setting
# this string if your java app doesn't work correctly. We may as well just lie
# and say that we're a working one by default.
#
# We choose LG3D to maximize irony: it is a 3D non-reparenting WM written in
# java that happens to be on java's whitelist.
wmname = "LG3D"
