# gamerx-sddm-theme

SDDM greeter theme for GamerX OS.

QML implementation supporting four background modes via `theme.conf`:
- `aurora` — animated procedural duotone (default; no asset cost)
- `image`  — `background.png`
- `video`  — `background.mp4`
- `gif`    — `background.gif` (treated as static image)

## Activate

```bash
sudo sed -i 's|^Current=.*|Current=gamerx|' /etc/sddm.conf || \
  echo -e "[Theme]\nCurrent=gamerx" | sudo tee /etc/sddm.conf.d/gamerx.conf
```

Then restart SDDM: `sudo systemctl restart sddm`.
