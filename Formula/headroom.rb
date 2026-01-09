class Headroom < Formula
  desc "Audio loudness analyzer and gain adjustment tool for mastering and DJ workflows"
  homepage "https://github.com/M-Igashi/headroom"
  url "https://github.com/M-Igashi/headroom/releases/download/v0.5.1/headroom-v0.5.1-macos-universal.tar.gz"
  sha256 "65c6bdea773209cecd68e5a68b702d099a6965b962c5ff7751331a22541ba593"
  version "0.5.1"
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
