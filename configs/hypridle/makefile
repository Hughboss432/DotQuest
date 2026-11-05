SCH := ./configs/hypridle
TO := $(HOME)/.config/hypr/

hypridle-dependencies:
	sudo pacman -S --needed --noconfirm hypridle

hypridle-config:
	cp $(SCH)/hypridle.conf $(TO)

hypridle: hypridle-dependencies hypridle-config
.PHONY: hypridle
