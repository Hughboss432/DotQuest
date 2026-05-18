PATH := $(HOME)/DotQuest/configs/silentsddm
TO := $(HOME)/etc

silentsddm-dependencies:
	yay -S sddm-silent-theme --noconfirm

silentsddm-config:
	cp $(SCH)/sddm.conf $(TO)

silentsddm: silentsddm-dependencies silentsddm-config
.PHONY: silentsddm