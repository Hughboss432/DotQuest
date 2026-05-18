SCH := ./configs/silentsddm
TO := /etc

silentsddm-dependencies:
	yay -S sddm-silent-theme --noconfirm

silentsddm-config:
	sudo cp $(SCH)/sddm.conf $(TO)/
	systemctl enable sddm

silentsddm: silentsddm-dependencies silentsddm-config
.PHONY: silentsddm