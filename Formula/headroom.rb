class Headroom < Formula
  desc "Audio loudness analyzer and gain adjustment tool for mastering and DJ workflows"
  homepage "https://github.com/M-Igashi/headroom"
  url "https://github.com/M-Igashi/headroom/releases/download/v1.0.1/headroom-v1.0.1-macos-universal.tar.gz"
  sha256 "fef9f3385d4830df44bcfa858c7fb52813f3708e65e6b5e825d2089e16c20347"
  version "1.0.1"
  license "MIT"

  depends_on "ffmpeg"
  depends_on "mp3gain"

  def install
    bin.install "headroom"
  end

  test do
    assert_match "headroom", shell_output("#{bin}/headroom 2>&1", 1)
  end
end
