class Headroom < Formula
  desc "Audio loudness analyzer and gain adjustment tool for mastering and DJ workflows"
  homepage "https://github.com/M-Igashi/headroom"
  url "https://github.com/M-Igashi/headroom/releases/download/v0.3.1/headroom-v0.3.1-macos-universal.tar.gz"
  sha256 "7b9b5c8abd768effdd4c63907f1999f3c3e37ffb6f29e1ac18bad15d86704e7b"
  version "0.3.1"
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
