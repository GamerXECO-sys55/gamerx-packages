# gamerx-packages

Source PKGBUILDs for the `[gamerx-core]` and `[gamerx-testing]` pacman repos.

## Layout (planned)

```
packages/
├── gamerx-keyring/              # the master GPG keyring
├── gamerx-mirrorlist/           # repo mirror list
├── gamerx-branding/             # /etc/os-release, /etc/lsb-release, logos
├── gamerx-tweaks/               # zram, ananicy, sysctl tunings
├── gamerx-meta/                 # vanilla edition install set (depends only)
├── gamerx-meta-aria/            # Aria edition install set
├── gamerx-grub-theme/
├── gamerx-plymouth-theme/
├── gamerx-sddm-theme/
├── gamerx-hyprlock-theme/
├── gamerx-wallpapers/
├── gamerx-icon-theme/
├── gamerx-shell/                # built from the gamerx-shell repo
├── gamerx-theme/                # the CLI
├── gamerx-welcome/              # built from the gamerx-welcome repo
└── gamerx-calamares-config/     # built from the gamerx-installer repo
```

## Building

Each package directory contains a standard PKGBUILD. Local build:

```bash
cd packages/<name>
makepkg -fs
```

CI builds every package on every tag and uploads to the `gamerx-repo` repo for
distribution.

## Status

🚧 **Phase 2 — not started.**

## See also

- [Meta repo](https://github.com/GamerXECO-sys55/gamerx-os) — spec, roadmap, decisions
- [gamerx-repo](https://github.com/GamerXECO-sys55/gamerx-repo) — built artifacts

## License

GPL-3.0 (for our own packages; upstream packages keep their own licenses)
