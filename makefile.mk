SCH := ./configs

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
	$(MAKE) -f $(SCH)/bashrc/makefile.mk bashrc
hypr:
	$(MAKE) -f $(SCH)/hypr/makefile.mk hypr
hyprlock:
	$(MAKE) -f $(SCH)/hyprlock/makefile.mk hyprlock
rofi:
	$(MAKE) -f $(SCH)/rofi/makefile.mk rofi
silentsddm:
	$(MAKE) -f $(SCH)/silentsddm/makefile.mk silentsddm
waybar-cava:
	$(MAKE) -f $(SCH)/waybar-cava/makefile.mk waybar-cava
kitty:
	$(MAKE) -f $(SCH)/kitty/makefile.mk kitty

#############
# Installing
#############

install: dependencies bashrc hypr hyprlock rofi silentsddm waybar-cava kitty
.PHONY: install bashrc hypr hyprlock rofi silentsddm waybar-cava kitty