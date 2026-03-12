cask "mp3rgui" do
  version "2.0.1"
  sha256 "c8eb2f568ab390891db2e187852e8080b3fe112af4a0919a46cac7660d284969"

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
