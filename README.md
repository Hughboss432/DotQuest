# DotQuest

This repository is my .config files and automation for **Arch linux** with **hyprland**. As this project is a **beginner configuration**, it is expected to have more and better configurations in the future.

---

## 00 - Dependencies and project clone.

For cloning the .config files and automation script, type the following commands in the terminal:

```bash
sudo pacman -S git make --noconfirm
```

```bash
git clone https://github.com/Hughboss432/DotQuest.git
cd DotQuest
```

### 01 - Install only what you want or **ALL** my configs.

If you want, you can install all my .config after a clean arch install. This will install **not only the .config** files but all the essencial you may need, like hyprland and yay. 

```bash
sudo make install
```

You can also use **only what you want**, by typing the package name to call the respective script:

```bash
sudo make waybar-cava
```

> Remenber, even if you use the individual script it does'nt mean it will be apllied as you need to change your hyprland.conf to use it. If you need you may check my file and do whatever you want to change. 