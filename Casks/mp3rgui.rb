cask "mp3rgui" do
  version "2.9.0"
  sha256 "cc386939e3e265e99fbc78c6d8e42706bdf0b1aedccc3eb78e97f459f16eb8bf"

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
