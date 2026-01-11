class Headroom < Formula
  desc "Audio loudness analyzer and gain adjustment tool for mastering and DJ workflows"
  homepage "https://github.com/M-Igashi/headroom"
  url "https://github.com/M-Igashi/headroom/releases/download/v1.1.1/headroom-v1.1.1-macos-universal.tar.gz"
  sha256 "4c23dccfbab52d8b5fb8a99b26cab7ccffb22bfbab1e8ed008bac29499649b39"
  version "1.1.1"
  license "MIT"

  depends_on "ffmpeg"

  def install
    bin.install "headroom"
  end

  test do
    assert_match "headroom", shell_output("#{bin}/headroom 2>&1", 1)
  end
end
