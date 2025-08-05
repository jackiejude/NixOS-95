# NixOS-95 but only the theme

*Just the theme, no system config*

---

## 🖥️ System Overview

* **OS**: NixOS
* **DE**: XFCE (customized)
* **GTK Theme**: [Chicago95](https://github.com/grassmunk/Chicago95)
* **Icons & Wallpapers**: [aconfuseddragon](https://aconfuseddragon.itch.io/)

---

## 📁 Directory Overview

<details>
<summary>tree .</summary>

```bash
NixOS-95/
├── default.nix
├── user-vars.nix
├── XFCE-retro/
│   ├── default.nix
│   └── Dotfiles/
├── Ressources/
│   ├── Icons/
│   ├── Images/
│   │   └── Wallpapers/
│   └── Themes/
├── README.md
```

</details>

---

### Wallpaper and Aesthetics

Wallpapers are located in `./Resources/Images/Wallpapers`.  
Some have been lightly edited. Originals were created by [aconfuseddragon](https://aconfuseddragon.itch.io/downloads).  

---

## Installation

> Requires a NixOS install.

1. **Clone the repository**:

```bash
git clone https://github.com/peritia-system/NixOS-95.git NixOS
cd NixOS
```

2. **Modify your config to import NixOS-95**:

3. **Build and switch to the system configuration**:

4. **Apply user settings with Home Manager**:

```bash
home-manager switch
```

### Rebuild Notes

Due to how **Home Manager** and XFCE handle theming, changes may not fully apply on the first attempt.

**For best results:**

1. Rebuild twice
2. Log out and back in after each rebuild

---

## Features

* Pixel-style retro desktop with pastel polish
* Lightweight and XFCE-powered (great for low-spec machines)
* Flake-based configuration with easy updates
* Themed with Chicago95 and matching icon set
