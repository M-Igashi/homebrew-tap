class Headroom < Formula
  desc "Audio loudness analyzer and gain adjustment tool for mastering and DJ workflows"
  homepage "https://github.com/M-Igashi/headroom"
  url "https://github.com/M-Igashi/headroom/releases/download/v0.4.0/headroom-v0.4.0-macos-universal.tar.gz"
  sha256 "738bba049266bf0882a568daa0c58d9b39cf83234a88b3e50e0f1695ddfa123f"
  version "0.4.0"
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
