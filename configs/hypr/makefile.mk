SCH := /configs/hypr
TO := $(HOME)/.config/hypr

hyprland-cursor:
	rm -rf /tmp/warcraft-3 && \
	git clone https://www.opencode.net/sorely/warcraft-3-cursors.git /tmp/warcraft-3 && \
		cd /tmp/warcraft-3/ && \
		cp -r /warcraft-3-cursors ~/.icons
	hyprctl setcursor warcraft-3-cursors 24

hyprland-config:
	cp $(SCH)/hyprland.conf $(TO)

hypr: hyprland-cursor hyprland-config
.PHONY: hypr