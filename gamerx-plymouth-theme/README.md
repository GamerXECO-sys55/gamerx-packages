# gamerx-plymouth-theme

Plymouth boot theme for GamerX OS.

Source assets in [`gamerx-branding/themes/gamerx-plymouth-theme/`](https://github.com/GamerXECO-sys55/gamerx-branding/tree/main/themes/gamerx-plymouth-theme).

## Theme

Pulsing duotone GamerX orb over an aurora gradient. Single-script (no
pre-rendered animation frames) so the package stays tiny and renders crisp at
any resolution.

## Activate

The package's `post_install` scriptlet calls `plymouth-set-default-theme -R gamerx`. If that fails (e.g. running inside a chroot), do it manually after install:

```bash
sudo plymouth-set-default-theme -R gamerx
```

You also need `splash` and `quiet` in your kernel cmdline (set up by the
GamerX OS installer in P7 automatically).
