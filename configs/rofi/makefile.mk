SCH := ./configs/rofi
TO := $(HOME)/.config/rofi

rofi-dependencies:
	sudo pacman -S rofi --noconfirm

rofi-config:
	mkdir -p $(TO)
	cp $(SCH)/colors-next.rasi $(TO)
	cp $(SCH)/colors.rasi $(TO)
	cp $(SCH)/config.rasi $(TO)

rofi: rofi-dependencies rofi-config
.PHONY: rofi