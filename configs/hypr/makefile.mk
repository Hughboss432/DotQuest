SCH := ./configs/hypr
TO := $(HOME)/.config/hypr

hyprland-cursor:
	rm -rf /tmp/warcraft-3
	rm -rf $(HOME)/.icons/warcraft-3
	git clone --depth 1 https://www.opencode.net/sorely/warcraft-3-cursors.git /tmp/warcraft-3
	mkdir -p $(HOME)/.icons
	cp -r /tmp/warcraft-3/ $(HOME)/.icons/

hyprland-config:
	mkdir -p $(TO)
	cp $(SCH)/hyprland.conf $(TO)

hypr: hyprland-cursor hyprland-config
.PHONY: hypr