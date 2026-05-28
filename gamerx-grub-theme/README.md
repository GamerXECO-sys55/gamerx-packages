# gamerx-grub-theme

GRUB theme for GamerX OS.

Source assets live in [`gamerx-branding/themes/gamerx-grub-theme/`](https://github.com/GamerXECO-sys55/gamerx-branding/tree/main/themes/gamerx-grub-theme). This PKGBUILD pulls them at build time, runs `build.sh` to bake PNGs from SVG, and installs the result to `/usr/share/grub/themes/gamerx/`.

## Activate

After install:

```bash
sudo sed -i 's|^#\?GRUB_THEME=.*|GRUB_THEME="/usr/share/grub/themes/gamerx/theme.txt"|' /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg
```

GamerX OS does this automatically via Calamares (P7) and `gamerx-tweaks` post-install hooks.
