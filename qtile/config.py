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
from floating_window_snapping import move_snap_window
import os
import subprocess

mod = "mod4"
terminal = guess_terminal()
brave_cmd = "brave"
zoom_cmd = "zoom"
suspend_cmd = "systemctl suspend"
thunar_cmd = "thunar"
screenshot_cmd = "flameshot gui"
rofi_cmd = "rofi -show drun"
rofi_shutdown = "rofi -show power-menu -modi power-menu:rofi-power-menu"
obs_cmd = "flatpak run com.obsproject.Studio"

keys = [
    # A list of available commands that can be bound to keys can be found
    # at https://docs.qtile.org/en/latest/manual/config/lazy.html
    # Switch between windows
    Key([mod], "h", lazy.layout.left(), desc="Move focus to left"),
    Key([mod], "l", lazy.layout.right(), desc="Move focus to right"),
    Key([mod], "j", lazy.layout.down(), desc="Move focus down"),
    Key([mod], "k", lazy.layout.up(), desc="Move focus up"),
    Key(["mod1"], "Tab", lazy.layout.next(), desc="Move window focus to other window"),
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
    Key([mod], "Return", lazy.spawn(terminal), desc="Launch terminal"),
    # Toggle between different layouts as defined below
    Key([mod], "Tab", lazy.next_layout(), desc="Toggle between layouts"),
    Key([mod], "q", lazy.window.kill(), desc="Kill focused window"),
    Key([mod, "control"], "r", lazy.reload_config(), desc="Reload the config"),
    Key([mod, "shift"], "q", lazy.shutdown(), desc="Shutdown Qtile"),
    Key(
        [mod, "shift"],
        "p",
        lazy.run_extension(
            extension.DmenuRun(
                dmenu_prompt="$",
                font="Fira Code Nerd Font",
                fontsize=14,
                dmenu_lines=10,
                background="#2e3440",
                selected_background="#81a1c1",
            )
        ),
        desc="Launch dmenu",
    ),
    Key([mod], "b", lazy.spawn(brave_cmd), desc="Launch brave"),
    Key([mod, "control"], "z", lazy.spawn(zoom_cmd), desc="Launch zoom"),
    Key([mod, "control"], "s", lazy.spawn(suspend_cmd), desc="Suspend"),
    Key([mod], "f", lazy.spawn(thunar_cmd), desc="Launch thunar"),
    Key(
        [mod, "shift"],
        "s",
        lazy.spawn(screenshot_cmd),
        desc="Screenshot part of the screen",
    ),
    Key([mod], "n", lazy.spawn(terminal + " -e nvim"), desc="Launch neovim"),
    Key([mod], "p", lazy.spawn(rofi_cmd), desc="Launch rofi"),
    Key([mod], "t", lazy.window.toggle_floating(), desc="Toggle floating"),
    Key([mod], "space", lazy.hide_show_bar("top"), desc="Toggle top bar hide/unhide"),
    Key([mod], "o", lazy.spawn(obs_cmd), desc="Launch obs"),
]

groups = [
    Group("1"),
    Group("2"),
    Group("3"),
    Group("4"),
    Group("5"),
    Group("6"),
    Group("7"),
    Group("8"),
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
    layout.Columns(
        border_focus="#81a1c1",
        border_focus_stack=["#81a1c1", "#81a1c1"],
        border_width=1,
        margin=5,
        margin_on_single=5,
    ),
    layout.Tile(margin=5, margin_on_single=5, border_width=1, border_focus="#81a1c1"),
    layout.Max(border_width=1, border_focus="#81a1c1"),
    layout.Floating(border_normal="#81a1c1", border_focus="#5e81ac", border_width=1),
    # Try more layouts by unleashing below layouts.
    # layout.Stack(num_stacks=2),
    # layout.Bsp(),
    # layout.Matrix(),
    # layout.MonadTall(),
    # layout.MonadWide(),
    # layout.RatioTile(),
    # layout.TreeTab(),
    layout.VerticalTile(margin=5, border_width=1, border_focus="#81a1c1"),
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
                widget.Sep(
                    linewidth=1,
                    padding=5,
                ),
                widget.GroupBox(
                    background="#3b4252",
                    font="Fira Code Nerd Font",
                    fontsize=14,
                    active="#bf616a",
                    inactive="eceff4",
                    highlight_method="block",
                    disable_drag=True,
                ),
                widget.Sep(
                    linewidth=1,
                    padding=15,
                ),
                widget.TaskList(
                    font="Fira Code Nerd Font",
                    fontsize=14,
                    foreground="#d8dee9",
                    highlight_method="block",
                    icon_size=21,
                    max_title_width=150,
                ),
                widget.Clock(
                    font="Fira Code Nerd Font",
                    fontsize=14,
                    format="%I:%M %p",
                    foreground="eceff4",
                ),
                widget.Spacer(length=bar.STRETCH),
                widget.CPU(
                    font="Fira Code Nerd Font",
                    fontsize=14,
                    format=" CPU: {load_percent}%",
                    foreground="#88c0d0",
                    update_interval=1,
                    mouse_callbacks={
                        "Button1": lambda: qtile.cmd_spawn(
                            terminal + " -e btop --utf-force"
                        ),
                    },
                ),
                widget.Sep(
                    linewidth=1,
                    padding=15,
                ),
                widget.NvidiaSensors(
                    font="Fira Code Nerd Font",
                    fontsize=14,
                    format=" GPU: {temp}°C",
                    foreground="#ebcb8b",
                    update_interval=1,
                    threshold=90,
                    mouse_callbacks={
                        "Button1": lambda: qtile.cmd_spawn("nvidia-settings"),
                    },
                ),
                widget.Sep(
                    linewidth=1,
                    padding=15,
                ),
                widget.GenPollText(
                    func=lambda: subprocess.check_output(
                        "/home/pramodhsathya/dotfiles/dotfiles/qtile/scripts/freemem.sh"
                    )
                    .strip()
                    .decode("utf-8"),
                    font="Fira Code Nerd Font",
                    fontsize=14,
                    foreground="a3be8c",
                    update_interval=1,
                    mouse_callbacks={
                        "Button1": lambda: qtile.cmd_spawn(
                            terminal + " -e btop --utf-force"
                        ),
                    },
                ),
                widget.Chord(
                    chords_colors={
                        "launch": ("#ff0000", "#ffffff"),
                    },
                    name_transform=lambda name: name.upper(),
                ),
                widget.Sep(
                    linewidth=1,
                    padding=15,
                ),
                widget.GenPollText(
                    update_interval=0,
                    func=lambda: subprocess.check_output(
                        "/home/pramodhsathya/dotfiles/dotfiles/qtile/scripts/kernelver.sh"
                    )
                    .strip()
                    .decode("utf-8"),
                    font="Fira Code Nerd Font",
                    fontsize=14,
                    foreground="#88c0d0",
                    mouse_callbacks={"Button1": lambda: qtile.cmd_spawn(terminal)},
                ),
                widget.Sep(
                    linewidth=1,
                    padding=15,
                ),
                widget.GenPollText(
                    update_interval=28800,
                    func=lambda: subprocess.check_output(
                        "/home/pramodhsathya/dotfiles/dotfiles/qtile/scripts/pacman_updates.sh"
                    )
                    .strip()
                    .decode("utf-8"),
                    font="Fira Code Nerd Font",
                    fontsize=14,
                    foreground="ebcb8b",
                    mouse_callbacks={
                        "Button1": lambda: qtile.cmd_spawn("pamac-manager"),
                        "Button3": lambda: qtile.cmd_spawn(terminal + " -e yay -Syu"),
                    },
                ),
                widget.Sep(
                    linewidth=1,
                    padding=15,
                ),
                widget.Systray(font="Fira Code Nerd Font", fontsize=14),
                widget.Sep(
                    linewidth=1,
                    padding=10,
                ),
                widget.GenPollText(
                    update_interval=10,
                    func=lambda: subprocess.check_output(
                        "/home/pramodhsathya/dotfiles/dotfiles/qtile/scripts/battery.sh"
                    )
                    .strip()
                    .decode("utf-8"),
                    font="Fira Code Nerd Font",
                    fontsize=14,
                    foreground="a3be8c",
                    mouse_callbacks={
                        "Button1": lambda: qtile.cmd_spawn(
                            "tuxedo-control-center",
                        )
                    },
                ),
                widget.Sep(
                    linewidth=1,
                    padding=15,
                ),
                widget.QuickExit(
                    font="Fira Code Nerd Font",
                    fontsize=14,
                    foreground="bf616a",
                    default_text=" ",
                    mouse_callbacks={"Button1": lambda: qtile.cmd_spawn(rofi_shutdown)},
                ),
                widget.Sep(
                    linewidth=1,
                    padding=5,
                ),
                widget.CurrentLayoutIcon(
                    font="Fira Code Nerd Font",
                    fontsize=14,
                    foreground="d08770",
                    background="2e3440",
                ),
                widget.Sep(
                    linewidth=1,
                    padding=5,
                ),
            ],
            26,
            background="#2e3440",
            opacity=0.90,
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
        move_snap_window(snap_dist=20),
        start=lazy.window.get_position(),
    ),
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
follow_mouse_focus = False
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
        Match(wm_class="ninjabrainbot-Main"),
        Match(wm_class="GParted"),
        Match(wm_class="gnome-calculator"),
        Match(wm_class="zoom "),
        Match(wm_class="jetbrains-idea-ce")
    ]
)
auto_fullscreen = True
focus_on_window_activation = "smart"
reconfigure_screens = True

# If things like steam games want to auto-minimize themselves when losing
# focus, should we respect this or not?
auto_minimize = False


@hook.subscribe.startup_once
def start_once():
    home = os.path.expanduser("~")
    subprocess.call([home + "/.config/qtile/autostart.sh"])


# XXX: Gasp! We're lying here. In fact, nobody really uses or cares about this
# string besides java UI toolkits; you can see several discussions on the
# mailing lists, GitHub issues, and other WM documentation that suggest setting
# this string if your java app doesn't work correctly. We may as well just lie
# and say that we're a working one by default.
#
# We choose LG3D to maximize irony: it is a 3D non-reparenting WM written in
# java that happens to be on java's whitelist.
wmname = "LG3D"
