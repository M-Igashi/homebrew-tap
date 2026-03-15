cask "markupsidedown" do
  version "0.1.28"
  sha256 "79da90dcaee10780f70cbbf69dcdf42255b48feab98ddb9b4d364b6f854939dd"

  url "https://github.com/M-Igashi/markupsidedown/releases/download/v#{version}/MarkUpsideDown_#{version}_universal.dmg"
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
