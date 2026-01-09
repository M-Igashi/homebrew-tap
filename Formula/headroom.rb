class Headroom < Formula
  desc "Audio loudness analyzer and gain adjustment tool for mastering and DJ workflows"
  homepage "https://github.com/M-Igashi/headroom"
  url "https://github.com/M-Igashi/headroom/releases/download/v0.5.2/headroom-v0.5.2-macos-universal.tar.gz"
  sha256 "edbcc604a78f03248fe2568f25e879bd2662e733a381091cc75b044e268ff1ec"
  version "0.5.2"
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
