cask "markupsidedown" do
  version "0.1.79"
  sha256 "205848b55456b6cb52d4a4dbd561fed88d20c491eead032183e55e5853ee8d58"

  url "https://github.com/M-Igashi/markupsidedown/releases/download/v#{version}/MarkUpsideDown_#{version}_aarch64.dmg"
  name "MarkUpsideDown"
  desc "AI-era Markdown editor with live preview and Cloudflare integration"
  homepage "https://github.com/M-Igashi/markupsidedown"

  app "MarkUpsideDown.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/MarkUpsideDown.app"]
  end

  zap trash: [
    "~/Library/Application Support/com.markupsidedown.app",
    "~/Library/Caches/com.markupsidedown.app",
    "~/Library/Preferences/com.markupsidedown.app.plist",
    "~/Library/Saved Application State/com.markupsidedown.app.savedState",
  ]
end
