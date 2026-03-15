cask "markupsidedown" do
  version "0.1.21"
  sha256 "8540e61816d17df21d6182c038141a0bf6e5b4f20676da5a3c459a1608b19687"

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
