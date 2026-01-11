class Headroom < Formula
  desc "Audio loudness analyzer and gain adjustment tool for mastering and DJ workflows"
  homepage "https://github.com/M-Igashi/headroom"
  url "https://github.com/M-Igashi/headroom/releases/download/v1.1.0/headroom-v1.1.0-macos-universal.tar.gz"
  sha256 "ae33c5850cffc95792b09f92fa869ef85e24e0bf4c89298fd2c66c1576f2d4cc"
  version "1.1.0"
  license "MIT"

  depends_on "ffmpeg"

  def install
    bin.install "headroom"
  end

  test do
    assert_match "headroom", shell_output("#{bin}/headroom 2>&1", 1)
  end
end
