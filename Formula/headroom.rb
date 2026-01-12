class Headroom < Formula
  desc "Audio loudness analyzer and gain adjustment tool for mastering and DJ workflows"
  homepage "https://github.com/M-Igashi/headroom"
  url "https://github.com/M-Igashi/headroom/releases/download/v1.2.0/headroom-v1.2.0-macos-universal.tar.gz"
  sha256 "7c8750ec17993cd93c301f3a89db9a4228f094b79da9d4851342a8ea474e96dc"
  version "1.2.0"
  license "MIT"

  depends_on "ffmpeg"

  def install
    bin.install "headroom"
  end

  test do
    assert_match "headroom", shell_output("#{bin}/headroom 2>&1", 1)
  end
end
