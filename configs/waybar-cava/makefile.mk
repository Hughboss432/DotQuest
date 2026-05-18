SCH := ./configs/waybar-cava
TO := $(HOME)/.config/waybar

waybar-cava-dependencies:
	yay -S waybar-cava --noconfirm

waybar-cava-config:
	mkdir -p $(TO)
	cp $(SCH)/config $(TO)
	cp $(SCH)/power_menu.xml $(TO)
	cp $(SCH)/style-dark.css $(TO)

waybar-cava: waybar-cava-dependencies waybar-cava-config
.PHONY: waybar-cava