.ONESHELL:

SCH := $(CURDIR)/configs/waypaper
TO := $(HOME)/.config/waypaper
EXTRA_DEPS := \
	hyprpaper \
	swww \
	base-devel \
	meson \
	ninja \
	pkgconf \
	mpv \
	wayland \
	python-pip \
	python-gobject \
	gtk3

waypaper-dependencies:
	sudo pacman -S --needed --noconfirm $(EXTRA_DEPS)

	pip uninstall waypaper -y --break-system-packages 2>/dev/null || true
	rm -rf /tmp/waypaper
	git clone https://github.com/anufrievroman/waypaper.git /tmp/waypaper
	cd /tmp/waypaper
	pip install --user --break-system-packages .
	update-desktop-database $(HOME)/.local/share/applications

	rm -rf /tmp/mpvpaper
	git clone https://github.com/GhostNaN/mpvpaper.git /tmp/mpvpaper
	cd /tmp/mpvpaper
	meson setup build --prefix=/usr/local
	ninja -C build
	sudo ninja -C build install
	rm -rf $(HOME)/wallpaper
	cp -r $(SCH)/wallpaper $(HOME)/

waypaper-config:
	rm -rf $(TO)
	mkdir -p $(TO)
	cp $(SCH)/config.ini $(TO)

waypaper: waypaper-dependencies waypaper-config
.PHONY: waypaper waypaper-dependencies waypaper-config
