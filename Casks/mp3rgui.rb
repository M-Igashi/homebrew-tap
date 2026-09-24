cask "mp3rgui" do
  version "3.9.0"
  sha256 "8cabda6754db6450b2848a5d0e3eba618d3e6f9afa8a9840b2ed8d65dcfa6e93"

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
