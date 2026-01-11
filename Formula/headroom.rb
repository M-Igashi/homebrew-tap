class Headroom < Formula
  desc "Audio loudness analyzer and gain adjustment tool for mastering and DJ workflows"
  homepage "https://github.com/M-Igashi/headroom"
  url "https://github.com/M-Igashi/headroom/releases/download/v1.1.2/headroom-v1.1.2-macos-universal.tar.gz"
  sha256 "45ce7b153558eb2c9e910e337e8e00fd1925fc6e30223e79bb3a420fa8809f9b"
  version "1.1.2"
  license "MIT"

  depends_on "ffmpeg"

  def install
    bin.install "headroom"
  end

  test do
    assert_match "headroom", shell_output("#{bin}/headroom 2>&1", 1)
  end
end
