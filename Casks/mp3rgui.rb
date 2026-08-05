cask "mp3rgui" do
  version "3.0.0"
  sha256 "f5fcf7beebf331688b88f8f5eadc85a31dd7fc52ea1033e9b66de94ab8c02dc3"

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
