SCH := ./configs/hyprlock
TO := $(HOME)/.config/hypr

hyprlock-dependencies:
	sudo pacman -S --needed --noconfirm hyprlock

hyprlock-config:
	cp $(SCH)/hyprlock.conf $(TO)

hyprlock: hyprlock-dependencies hyprlock-config
.PHONY: hyprlock
