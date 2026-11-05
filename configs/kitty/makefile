SCH := ./configs/kitty
TO := $(HOME)/.config/kitty

kitty-dependencies:
	sudo pacman -S --needed --noconfirm kitty

kitty-config:
	mkdir -p $(TO)
	cp $(SCH)/kitty.conf $(TO)

kitty: kitty-dependencies kitty-config
.PHONY: kitty
