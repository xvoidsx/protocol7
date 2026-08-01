#!/usr/bin/env bash
# early installation script for protocol7
# XXX more stuff is going to be added soon
set -euo pipefail
install_pkgs () {
	local pkgs=("tmux" "vim" "amfora" "lynx" "elinks" "links" "cmus" "cava" "opendoas" "lsd" "nnn" "tty-clock" "calcurse" "pandoc")
	echo "installing needed packages..."; sleep 1
	sudo apt update; sudo apt install "${pkgs[@]}" -y
}
setup_doas () {
	local doas_conf="/etc/doas.conf"
	echo "permit persist ${USER} as root" | sudo tee "$doas_conf"
}
copy_configs () {
	local vim_conf="$HOME/.vimrc"
	local tmux_conf="$HOME/.config/tmux/tmux.conf"
	local bash_conf="$HOME/.bashrc"
	cp configs/vimrc "$vim_conf"
	cp configs/tmux.conf "$tmux_conf"
	cp configs/bashrc "$bash_conf"
}
main () {
	install_pkgs
	setup_doas
	copy_configs
}
# - - - - entry
main
