# gamerx-packages

Source PKGBUILDs for the `[gamerx-core]` and `[gamerx-testing]` pacman repos.

## Layout

```
gamerx-keyring/      — master GPG public key + trust policy (registers the repo with pacman)
gamerx-mirrorlist/   — /etc/pacman.d/gamerx-mirrorlist
gamerx-branding/     — pulls assets from gamerx-branding repo, installs to /etc + /usr/share/gamerx
gamerx-tweaks/       — sysctl, zram, journald, makepkg, earlyoom defaults
gamerx-meta/         — vanilla edition meta package (depends-only)
gamerx-meta-aria/    — Aria edition meta package
gamerx-theme/        — single-source-of-truth theme CLI (Python)
```

## Building locally

Each directory is a standard Arch PKGBUILD. To build one:

```bash
cd gamerx-keyring
makepkg -fs --skippgpcheck
```

Most packages have no external build deps. `gamerx-branding` clones the
`gamerx-branding` source repo at build time (so makedepends includes git).

## Linting

```bash
namcap PKGBUILD
namcap *.pkg.tar.zst
```

All packages currently pass namcap or have only documented false-positive
warnings (meta-package "deps-not-needed" warnings; build-sandbox "uninstalled
referenced module" warnings that disappear on a real GamerX OS install).

## Signing

Production builds sign every package with the GamerX OS repo key. The signing
subkey lives only on the CI runner and the maintainer machine. The master key
is kept offline.

Fingerprint of the master key (also shipped in `gamerx-keyring/gamerx-os.fpr`):

```
3C7C0F0E E2EC008D 417FA2D6 4354EA4A AA4736D3
```

## Status

- ✅ **P2 — core packages built locally.** All 7 packages compile. namcap clean
  modulo documented sandbox warnings. CLI smoke-tested.
- 🚧 **P5 — repo signing pipeline** wires these into GitHub Actions.

## See also

- [Meta repo](https://github.com/GamerXECO-sys55/gamerx-os)
- [gamerx-repo](https://github.com/GamerXECO-sys55/gamerx-repo) — distribution

## License

GPL-3.0 (for our own packages; upstream packages keep their own licenses).
