# Maitre-Pangolin's Homebrew tap

```bash
brew tap maitre-pangolin/tap
brew trust --cask maitre-pangolin/tap/wheelsmith
brew install --cask maitre-pangolin/tap/wheelsmith
```

Homebrew only loads casks from other people's taps once you trust them, hence `brew trust`.

| Cask | App |
|---|---|
| `wheelsmith` | [WheelSmith](https://github.com/Maitre-Pangolin/WheelSmith), a radial quick-action wheel for macOS |

WheelSmith isn't notarized by Apple, so macOS blocks its first launch: open it once, then click
**Open Anyway** in System Settings → Privacy & Security.

The cask follows new WheelSmith releases automatically: [`bump.yml`](.github/workflows/bump.yml)
checks for one every hour.
