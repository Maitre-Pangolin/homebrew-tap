cask "wheelsmith" do
  version "0.1.0"
  sha256 "dd8077751bd94902160309c318f0f0712ef02e46da4b6b645d5e41aa289bc942"

  url "https://github.com/Maitre-Pangolin/WheelSmith/releases/download/v#{version}/WheelSmith-#{version}.zip"
  name "WheelSmith"
  desc "Radial quick-action wheel for apps, menus, shortcuts and scripts"
  homepage "https://github.com/Maitre-Pangolin/WheelSmith"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "WheelSmith.app"

  # Quit it (cleanly, so its LaunchAgent doesn't restart it) before an upgrade or uninstall.
  # The login item stays, so it comes back at the next login after an upgrade.
  uninstall quit: "dev.wheelsmith.app"

  zap launchctl: "dev.wheelsmith.app",
      trash:     [
        "~/.config/wheelsmith",
        "~/Library/LaunchAgents/dev.wheelsmith.app.plist",
        "~/Library/Preferences/dev.wheelsmith.app.plist",
      ]

  caveats <<~EOS
    WheelSmith isn't notarized by Apple, so macOS blocks its first launch.
    Open it once, then go to System Settings > Privacy & Security and click
    "Open Anyway" next to WheelSmith. Or run:
      xattr -dr com.apple.quarantine /Applications/WheelSmith.app

    It turns on launch at login the first time it runs. Hold Option-Space anywhere.

    After `brew upgrade`, open WheelSmith again (or log out and back in).
    To remove it with its login item and config: brew uninstall --zap wheelsmith
  EOS
end
