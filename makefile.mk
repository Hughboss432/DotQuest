CONF_PATH := $(HOME)/DotQuest/configs

#############
# Essencial Build
#############
dependencies:
	sudo pacman -S hyprland --noconfirm
	sudo pacman -S --needed git base-devel --noconfirm
	rm -rf /tmp/yay && \
	git clone https://aur.archlinux.org/yay.git /tmp/yay && \
		cd /tmp/yay && makepkg -si
#---extra
	sudo pacman -S dolphin --noconfirm
	yay -S librewolf-bin fastfetch cava \
		hyprshot waypaper \
		--noconfirm

#############
# Packages with configs
#############

bashrc:
	$(MAKE) -f $(CONF_PATH)/bashrc/MakeFile.mk bashrc
hypr:
	$(MAKE) -f $(CONF_PATH)/hypr/MakeFile.mk hypr
hyprlock:
	$(MAKE) -f $(CONF_PATH)/hyprlock/MakeFile.mk hyprlock
rofi:
	$(MAKE) -f $(CONF_PATH)/rofi/MakeFile.mk rofi
silentsddm:
	$(MAKE) -f $(CONF_PATH)/silentsddm/MakeFile.mk silentsddm
waybar-cava:
	$(MAKE) -f $(CONF_PATH)/waybar-cava/MakeFile.mk waybar-cava

#############
# Installing
#############

install: dependencies bashrc hypr hyprlock rofi silentsddm waybar-cava 
.PHONY: install bashrc hypr hyprlock rofi silentsddm waybar-cava