SCH := ./configs

PACMAN_PACKAGES := \
	dolphin \
	librewolf \
	fastfetch \
	flatpak \
	hyprshot \
	swaync \
	noto-fonts \
	noto-fonts-emoji \
	ttf-jetbrains-mono \
	ttf-font-awesome \
	ttf-nerd-fonts-symbols \
	ttf-jetbrains-mono-nerd \
	python-pipx \
	pipewire \
	pipewire-pulse \
	pipewire-alsa \
	pipewire-jack \
	wireplumber \
	pavucontrol

.PHONY: install dependencies bashrc hypr hyprlock rofi silentsddm waybar-cava kitty

#############
# Essencial Build
#############

dependencies:
	sudo pacman -S --needed --noconfirm hyprland git base-devel
	sudo pacman -S --needed --noconfirm $(PACMAN_PACKAGES)

        rm -rf /tmp/yay && \
        git clone https://aur.archlinux.org/yay.git /tmp/yay && \
                cd /tmp/yay && makepkg -si --needed --noconfirm

#############
# Packages with configs
#############

bashrc:
	$(MAKE) -f $(SCH)/bashrc/makefile bashrc
hypr:
	$(MAKE) -f $(SCH)/hypr/makefile hypr
hyprlock:
	$(MAKE) -f $(SCH)/hyprlock/makefile hyprlock
hypridle:
	$(MAKE) -f $(SCH)/hypridle/makefile hypridle
rofi:
	$(MAKE) -f $(SCH)/rofi/makefile rofi
silentsddm:
	$(MAKE) -f $(SCH)/silentsddm/makefile silentsddm
waybar-cava:
	$(MAKE) -f $(SCH)/waybar-cava/makefile waybar-cava
waypaper:
	$(MAKE) -f $(SCH)/waypaper/makefile waypaper
kitty:
	$(MAKE) -f $(SCH)/kitty/makefile kitty

#############
# Installing
#############

install: dependencies bashrc hypr hyprlock hypridle rofi silentsddm waybar-cava kitty

