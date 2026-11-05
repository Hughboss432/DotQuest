SCH := ./configs/waybar-cava
TO := $(HOME)/.config/waybar

WAYBAR_DEPS := \
	gtkmm3 \
	jsoncpp \
	libsigc++ \
	fmt \
	wayland \
	chrono-date \
	spdlog \
	gtk3 \
  	gobject-introspection \
	libgirepository \
	libpulse \
	libnl \
	libappindicator-gtk3 \
  	libdbusmenu-gtk3 \
	libmpdclient \
	sndio \
	libevdev \
	libxkbcommon \
	upower \
	meson \
  	cmake \
	scdoc \
	wayland-protocols \
	glib2-devel

waybar-cava-dependencies:
	sudo pacman -S --needed --noconfirm $(WAYBAR_DEPS)
	
	rm -rf /tmp/waybar && \
	git clone https://github.com/Alexays/Waybar.git /tmp/waybar && \
		cd /tmp/waybar && \
		sudo meson setup build && \
		sudo ninja -C build && \
		sudo ninja -C build install

waybar-cava-config:
	mkdir -p $(TO)
	cp $(SCH)/config $(TO)
	cp $(SCH)/power_menu.xml $(TO)
	cp $(SCH)/style-dark.css $(TO)

waybar-cava: waybar-cava-dependencies waybar-cava-config
.PHONY: waybar-cava
