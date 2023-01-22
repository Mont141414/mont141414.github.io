from typing import List
from libqtile import bar, layout, widget
from libqtile.config import Click, Drag, Group, Key, Match, Screen
from libqtile.lazy import lazy
from libqtile.utils import guess_terminal
mod = "mod4"
terminal = "kitty"


# THE BIG 5

keys = [
    Key([mod], "w", lazy.window.kill(), desc = "Kill focused window"),
    Key([mod, "control"], "q", lazy.shutdown(), desc = "Shutdown Qtile"),
    Key([mod], "r", lazy.spawncmd(), desc = "Spawn a command using a prompt widget"),
    Key([mod], "Return", lazy.spawn(terminal), desc = "Launch terminal"),
    Key([mod], "n", lazy.next_layout(), desc = "Changes to the next layout"),
    Key([mod], "Down", lazy.layout.swap_left()),
    Key([mod], "Up", lazy.layout.swap_right()),
    Key([mod], "Right", lazy.layout.shuffle_down()),
    Key([mod], "Left", lazy.layout.shuffle_up()),
]

groups = [Group(i) for i in "123456789"]
for i in groups:
    keys.extend([
        Key([mod], i.name, lazy.group[i.name].toscreen(), desc = "Switch to group {}".format(i.name)),
        Key([mod, "shift"], i.name, lazy.window.togroup(i.name, switch_group = True), desc = "Switch to & move focused window to group {}".format(i.name)),
    ])

layouts = [
    layout.Max(border_width = 0),
    layout.MonadWide(border_width = 0),
]

mouse = []

screens = [
    Screen(
        top = bar.Bar(
            [
                widget.GroupBox(disable_drag = True, highlight_method = "line"),
                widget.TaskList(),
                widget.Prompt(),
                widget.TextBox("&lt;M + r&gt; to spawn", foreground="#d75f5f"),
                widget.Clock(),
            ],
            24,
            background = "#000000aa"
        ),
    ),
]


# CONFIG VARS

auto_fullscreen = False
bring_front_click = "floating_only"
cursor_warp = False
dgroups_key_binder = None
dgroups_app_rules = []
extension_defaults = dict(font = "sans", fontsize = 12, padding = 3) 
focus_on_window_activation = "smart"
floating_layout = layout.Floating(border_width = 0)
follow_mouse_focus = True
widget_defaults = dict(font = "sans", fontsize = 12, padding = 3)
reconfigure_screens = True
wmname = "LG3D"
auto_minimize = True
