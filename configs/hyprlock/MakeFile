SCH := $(HOME)/DotQuest/configs/hyprlock
TO := $(HOME)/.config/hypr

hyprlock-dependencies:
	yay -S hyprlock --noconfirm

hyprlock-config:
	cp $(SCH)/hyprlock.conf $(TO)

hyprlock: hyprlock-dependencies hyprlock-config
.PHONY: hyprlock