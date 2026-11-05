SCH := ./configs/silentsddm
TO := /etc

silentsddm-dependencies:
	sudo pacman -S --needed --noconfirm sddm qt6-svg qt6-virtualkeyboard qt6-multimedia-ffmpeg qt6-imageformats

	rm -rf /tmp/SilentSDDM
	git clone -b main --depth=1 https://github.com/uiriansan/SilentSDDM /tmp/SilentSDDM
	sudo mkdir -p /usr/share/sddm/themes/silent
	sudo cp -rf /tmp/SilentSDDM/. /usr/share/sddm/themes/silent/
	sudo cp -rf /tmp/SilentSDDM/fonts/. /usr/share/fonts/

silentsddm-config:
	sudo cp $(SCH)/sddm.conf $(TO)/
	sudo systemctl enable sddm

silentsddm: silentsddm-dependencies silentsddm-config
.PHONY: silentsddm silentsddm-dependencies silentsddm-config
