class Headroom < Formula
  desc "Audio loudness analyzer and gain adjustment tool for mastering and DJ workflows"
  homepage "https://github.com/M-Igashi/headroom"
  url "https://github.com/M-Igashi/headroom/releases/download/v0.1.0/headroom-v0.1.0-darwin-arm64.tar.gz"
  sha256 "b65435cab3c3b1d2ba08a7780d5cef0c21180c6719c330e0ac169351a20160c9"
  version "0.1.0"
  license "MIT"

  depends_on "ffmpeg"
  depends_on arch: :arm64

  def install
    bin.install "headroom"
  end

  test do
    assert_match "headroom", shell_output("#{bin}/headroom --help 2>&1", 2)
  end
end
