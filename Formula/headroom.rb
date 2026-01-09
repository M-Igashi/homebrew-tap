class Headroom < Formula
  desc "Audio loudness analyzer and gain adjustment tool for mastering and DJ workflows"
  homepage "https://github.com/M-Igashi/headroom"
  url "https://github.com/M-Igashi/headroom/releases/download/v0.3.0/headroom-v0.3.0-macos-universal.tar.gz"
  sha256 "974fb5759deb38eabc04c39338b4c357511ebfaa4697642afca108802b4d3c2d"
  version "0.3.0"
  license "MIT"

  depends_on "ffmpeg"

  def install
    bin.install "headroom"
  end

  def caveats
    <<~EOS
      For MP3 support, install mp3gain:
        brew install mp3gain
    EOS
  end

  test do
    assert_match "headroom", shell_output("#{bin}/headroom 2>&1", 1)
  end
end
