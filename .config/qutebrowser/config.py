import json
import getpass

DownloadDirectory = f"/home/{getpass.getuser()}/stuff/dl"

config.load_autoconfig()
c.completion.shrink = True
c.tabs.show = 'multiple'
c.statusbar.show = 'in-mode'

## Load Colours Generated by 'wal'
with open(f"/home/{getpass.getuser()}/.cache/wal/colors.json") as json_data:
    data = json.load(json_data)

### Start Pages
c.url.start_pages = ["~/.config/qutebrowser/homepage.html"]
c.url.default_page = "~/.config/qutebrowser/homepage.html"

## Set keybindings (set in 'keybindings.py')
config.source('qute_keys.py')
config.bind('<Ctrl-h>', 'back')
config.bind('<Ctrl-l>', 'forward')

### Set Colours
## Background Colors
config.set('colors.statusbar.normal.bg', data["special"]["background"])
config.set('colors.statusbar.command.bg', data["special"]["background"])
config.set('colors.statusbar.insert.bg', data["colors"]["color4"])
config.set('colors.tabs.bar.bg', data["special"]["background"])
config.set('colors.tabs.odd.bg', data["special"]["background"])
config.set('colors.tabs.even.bg', data["special"]["background"])
config.set('colors.tabs.selected.odd.bg', data["colors"]["color3"])
config.set('colors.tabs.selected.even.bg', data["colors"]["color3"])
config.set('colors.completion.item.selected.bg', data["colors"]["color5"])
config.set('colors.completion.item.selected.border.bottom', data["colors"]["color5"])
config.set('colors.completion.item.selected.border.top', data["colors"]["color5"])
config.set('colors.completion.category.bg', data["special"]["background"])
config.set('colors.completion.odd.bg', data["special"]["background"])
config.set('colors.completion.even.bg', data["special"]["background"])
config.set('colors.completion.category.border.bottom', data["special"]["foreground"])
config.set('colors.keyhint.bg', data["colors"]["color13"])
config.set('colors.hints.bg', data["colors"]["color13"])
config.set('colors.tooltip.bg', data["special"]["background"])
config.set('colors.tabs.indicator.error', data["colors"]["color1"])
config.set('colors.tabs.indicator.start', data["colors"]["color10"])
config.set('colors.tabs.indicator.stop', data["colors"]["color3"])

## Foreground Colors
config.set('colors.statusbar.normal.fg', data["special"]["foreground"])
config.set('colors.tabs.odd.fg', data["special"]["foreground"])
config.set('colors.tabs.even.fg', data["special"]["foreground"])
config.set('colors.tabs.selected.odd.fg', data["special"]["background"])
config.set('colors.tabs.selected.even.fg', data["special"]["background"])
config.set('colors.statusbar.insert.fg', data["special"]["background"])
config.set('colors.completion.category.fg', data["special"]["foreground"])
config.set('colors.completion.fg', data["special"]["foreground"])
config.set('colors.completion.match.fg', data["colors"]["color12"])
config.set('colors.keyhint.fg', data["special"]["background"])
config.set('colors.hints.fg', data["special"]["background"])
config.set('colors.hints.match.fg', data["special"]["background"])
config.set('colors.tooltip.fg', data["special"]["foreground"])

## Set Download Directory
config.set('downloads.location.directory', DownloadDirectory)
config.set('downloads.location.remember', False)
config.set('downloads.position', 'bottom')

