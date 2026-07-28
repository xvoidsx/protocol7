# protocol7
<img width="834" height="469" alt="image" src="https://github.com/user-attachments/assets/303aa67d-d806-4cde-9d51-ec59922cec37" />

*Protocol7 is the headless version of naviOS, maintaining the Wired look and feel for server setups.*

### about protocol7

**protocol7** is the replication of the wiredWM environment for the server. It allows you to take the keybinds and aesthetic you know and love from the desktop edition of naviOS, and duplicates it on the TTY, with our highly-configured `tmux` and `herdr` multiplexers as the centerpieces, granting you powers to spawn new panes (windows) in your environment, switch between them at will, and work just as efficiently as you can on your naviOS desktop.

**protocol7** aims to bridge the gap and work seamlessly no matter what environment you're in, giving you consistency across the Wired. Whether you're docked into your normal Wayland session, or SSHing into a remote node from a dark room.

- **wired tiling logic**: Our `tmux` and `herdr` configs closely mirror the keybinds from our **wiredWM** environment, replicating the tiling flow carefully.
- **cognitive focus**: Your inactive panes are dimmed when not in use, so you can easily tell which pane you're actively working in.
- **status bar synergy**: At the top of our `tmux` session, you will see modules showing your current workspace, your current activity, and the time and date. Inspired by the `waybar` in **wiredWM**!

### quickstart

Here's a quick cheat-sheet for getting going with **protocol7**: 

> Please note your `Prefix` is **CTRL+Space**. Think of the prefix as your **Super** key from **wiredWM**!

- `Prefix` + `Enter`:	create new window
- `Prefix` + `h / v`:	split pane (horizontal/vertical)
- `Prefix` + **arrow keys**:    navigate the grid
- `Prefix` + `Shift` + **arrow keys**: switch the positions of panes in the grid
- `Prefix` + `r`:	resize mode (use **arrow keys** to tune, `Esc` to lock)
- `Prefix` + `f`:	zoom (toggle fullscreen)
- `Prefix` + `Q`:	kill current pane
- `Prefix` + `C-r`:	hot-reload tmux

### visual hints

You'll notice some text hints when using certain shortcuts. In the **protocol hub** (top right), you will see: 

- **PREFIX** (in cyan): The prefix keybind has been pressed and the system is waiting on the next part of the input.
- **ZOOM** (in neon green): The active pane was maximized and the rest of the grid is obscured until it is re-tiled.

### in the works

You are going to be able to soon choose between using `tmux` or `herdr` as your multiplexer of choice. Here is a sneak peek of what the `herdr` config looks like:

<img width="1366" height="768" alt="image" src="https://github.com/user-attachments/assets/c85d84ba-d692-4eb2-abc2-278ab5fb6009" />

### relevant links

- [protocol7](https://rav3ndust.xyz/blog/2026-05-19.html): further writeup about **protocol7** 
