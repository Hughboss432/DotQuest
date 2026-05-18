#############
# Essencial Build
#############
dependencies:
	sudo pacman -S hyprland --noconfirm
	sudo pacman -S --needed git base-devel --noconfirm
	rm -rf /tmp/yay && \
	git clone https://aur.archlinux.org/yay.git /tmp/yay && \
		cd /tmp/yay && makepkg -si --needed --noconfirm
#---my essencial
	sudo pacman -S dolphin --noconfirm
	yay -S librewolf-bin fastfetch cava \
		hyprshot waypaper \
		noto-fonts \
		noto-fonts-emoji \
		ttf-jetbrains-mono \
		ttf-font-awesome \
		pipewire \
		wireplumber \
		pipewire-pulse \
		--noconfirm

#############
# Packages with configs
#############

bashrc:
	$(MAKE) -f configs/bashrc/makefile.mk bashrc
hypr:
	$(MAKE) -f configs/hypr/makefile.mk hypr
hyprlock:
	$(MAKE) -f configs/hyprlock/makefile.mk hyprlock
rofi:
	$(MAKE) -f configs/rofi/makefile.mk rofi
silentsddm:
	$(MAKE) -f configs/silentsddm/makefile.mk silentsddm
waybar-cava:
	$(MAKE) -f configs/waybar-cava/makefile.mk waybar-cava
kitty:
	$(MAKE) -f configs/kitty/makefile.mk kitty

#############
# Installing
#############

install: dependencies bashrc hypr hyprlock rofi silentsddm waybar-cava kitty
.PHONY: install bashrc hypr hyprlock rofi silentsddm waybar-cava kitty