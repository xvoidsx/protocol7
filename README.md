# protocol7
<img width="834" height="469" alt="image" src="https://github.com/user-attachments/assets/303aa67d-d806-4cde-9d51-ec59922cec37" />

*Protocol7 is the headless version of naviOS, maintaining the Wired look and feel for server setups.*

### about protocol7

**protocol7** is the replication of the wiredWM environment for the server. It allows you to take the keybinds and aesthetic you know and love from the desktop edition of naviOS, and duplicates it on the TTY, with our highly-configured `tmux` as the centerpiece, granting you powers to spawn new panes (windows) in your environment, switch between them at will, and work just as efficiently as you can on your naviOS desktop.

**protocol7** aims to bridge the gap and work seamlessly no matter what environment you're in, giving you consistency across the Wired. Whether you're docked into your normal Wayland session, or SSHing into a remote node from a dark room.

- **wired tiling logic**: Our `tmux` config closely mirrors the keybinds from our **wiredWM** environment, replicating the tiling flow carefully.
- **cognitive focus**: Your inactive panes are dimmed when not in use, so you can easily tell which pane you're actively working in.
- **status bar synergy**: At the top of our `tmux` session, you will see modules showing your current workspace, your current activity, and the time and date. Inspired by the `waybar` in **wiredWM**!

### quickstart

Here's a quick cheat-sheet for getting going with **protocol7**: 

> Please note your `Prefix` is **CTRL+Space**. Think of the prefix as your **meta** key from **wiredWM**!

- `Prefix` + `Enter`:	Create new window
- `Prefix` + `h / v`:	Split pane (horizontal/vertical)
- `Prefix` + `j k l ;`:	Navigate the grid
- `Prefix` + `r`:	Resize mode (Use `j k l ;` to tune, `Esc` to lock)
- `Prefix` + `f`:	Zoom (toggle fullscreen)
- `Prefix` + `Q`:	Kill current pane
- `Prefix` + `C-r`:	Hot-reload tmux

### visual hints

You'll notice some text hints when using certain shortcuts. In the **protocol hub** (top right), you will see: 

- **PREFIX** (in cyan): The prefix keybind has been pressed and the system is waiting on the next part of the input.
- **ZOOM** (in neon green): The active pane was maximized and the rest of the grid is obscured until it is re-tiled.
