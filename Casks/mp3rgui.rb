cask "mp3rgui" do
  version "3.6.0"
  sha256 "1e77828277a61bac7edd3cf4dc47097c62505d0edaaed605057a859a173d198d"

  url "https://github.com/M-Igashi/mp3rgain/releases/download/v#{version}/mp3rgui-v#{version}-macos-universal.dmg"
  name "mp3rgui"
  desc "GUI for lossless MP3/M4A volume adjustment - a modern mp3gain replacement"
  homepage "https://github.com/M-Igashi/mp3rgain"

  app "mp3rgui.app"

  zap trash: [
    "~/Library/Caches/com.github.m-igashi.mp3rgui",
    "~/Library/Preferences/com.github.m-igashi.mp3rgui.plist",
    "~/Library/Saved Application State/com.github.m-igashi.mp3rgui.savedState",
  ]
end
