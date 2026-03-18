cask "markupsidedown" do
  version "0.1.57"
  sha256 "2a454a31bbcb97340b8bd3ea969bc9c5a5f0937b25c2e70b59ddce431b84cd86"

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
