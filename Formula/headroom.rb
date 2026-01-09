class Headroom < Formula
  desc "Audio loudness analyzer and gain adjustment tool for mastering and DJ workflows"
  homepage "https://github.com/M-Igashi/headroom"
  url "https://github.com/M-Igashi/headroom/releases/download/v0.5.0/headroom-v0.5.0-macos-universal.tar.gz"
  sha256 "14b19980632d7e06deeb795263ad0e0f49ddbc235da90bd86cceca71bf4e7085"
  version "0.5.0"
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
