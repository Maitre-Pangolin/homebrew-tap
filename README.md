# Maitre-Pangolin's Homebrew tap

```bash
brew install --cask maitre-pangolin/tap/wheelsmith
```

| Cask | App |
|---|---|
| `wheelsmith` | [WheelSmith](https://github.com/Maitre-Pangolin/WheelSmith), a radial quick-action wheel for macOS |

WheelSmith isn't notarized by Apple, so macOS blocks its first launch: open it once, then click
**Open Anyway** in System Settings → Privacy & Security.

The cask follows new WheelSmith releases automatically: [`bump.yml`](.github/workflows/bump.yml)
checks for one every hour.
