cask "markupsidedown" do
  version "0.1.97"
  sha256 "e0127d76fee844f1468e8e210dc96980f6a3c802a0e9b73c1d80098b34fd82fd"

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
