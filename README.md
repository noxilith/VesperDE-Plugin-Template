# Vesper plugin template

Start here to make a plugin for the [Vesper desktop](https://github.com/noxilith/VesperDE).

A plugin is a folder with a `plugin.toml`. It can

- **run a program** while the desktop runs (`run`),
- **add widgets to the top bar** (`[[bar_item]]`: a command whose first line of output is shown),
- **add actions to the launcher** (`[[action]]`).

Plugins can be written in anything that runs from a shell: sh, Python, Rust, Go ... Use the
[IPC socket](https://github.com/noxilith/VesperDE/blob/main/docs/plugins.md#talking-to-the-desktop) to read the desktop's state and control it.

## Try it

1. Copy this folder to `~/.config/vesper/plugins/hello` (or use *Settings > Plugins > Install from a folder*).
2. Open *Settings > Plugins* and **Turn on** "Hello plugin".
3. Open *Settings > Bar > Items*, find "Hello widget" and move it onto the bar.
4. Press `Mod+Space` and type "Say hello".

## Make it yours

- Edit `plugin.toml` (name, author, description) and the scripts.
- Keep `api = 1` unless the plugin guide says otherwise.
- Run `./package.sh` to build a `.tar.gz` people can install from *Settings > Plugins*.

## Publishing

Put the folder in its own repository, tag a release and attach the `.tar.gz`. Say clearly what the plugin runs: plugins have
the same access as you do, so people should be able to read the code before they turn it on.

Licence: MIT (change it to whatever you like).
