#!/usr/bin/env bash
# early installation script for protocol7
# XXX more stuff is going to be added soon
install_pkgs () {
	local pkgs=("tmux" "vim" "amfora" "lynx" "opendoas" "nnn")
	sudo apt update
	for pkg in $pkgs{@}; do
		echo "installing $pkg..."; sleep 1
		sudo apt install $pkg -y
	done
}
setup_doas () {
	local doas_conf="/etc/doas.conf"
	echo "permit persist $USER as root" | sudo tee $doas_conf
}
copy_configs () {
	local vim_conf="$HOME/.vimrc"
	local tmux_conf="$HOME/.tmux.conf"
	local bash_conf="$HOME/.bashrc"
	doas cp configs/vimrc $vim_conf
	doas cp configs/tmux.conf $tmux_conf
	doas cp configs/bashrc $bash_conf
}
main () {
	install_pkgs
	setup_doas
	copy_configs
}
# - - - - entry
main
