# DotQuest

This repository is my .config files and automation for **Arch linux** with **hyprland**. As this project is a **beginner configuration**, it is expected to have more and better configurations in the future.

This repository contains my `.config` files and automation scripts for **Arch Linux with Hyprland**. Since this project is still a **beginner configuration**, it is expected to receive more and better configurations in the future.

---

## 00 - Dependencies and project clone.

To clone the `.config` files and automation scripts, run the following commands in the terminal:

```bash
sudo pacman -S git make --noconfirm
```

```bash
git clone https://github.com/Hughboss432/DotQuest.git /tmp/DotQuest
cd /tmp/DotQuest
```

### 01 - Install only what you want or **ALL** my configs.

If you want, you may install all my .config files **after a clean Arch Linux installation**. This will install not only the configuration files, but also all the essentials you may need, such as Hyprland, yay and more essencials.

```bash
make -f makefile.mk install
```
> After the full install, reboot with `reboot now`.

You can also install **only what you want** by typing the package name to call the respective script:

```bash
make waybar-cava
```

---

> Remember: even if you use an individual script, it does not mean it will be applied exactly as you need. You may still need to modify your hyprland.conf to use it properly. Feel free to check my files and change whatever you want.

> No dedicated video drivers are included in the script. You need to install them manually.