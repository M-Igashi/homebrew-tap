class Headroom < Formula
  desc "Audio loudness analyzer and gain adjustment tool for mastering and DJ workflows"
  homepage "https://github.com/M-Igashi/headroom"
  url "https://github.com/M-Igashi/headroom/releases/download/v1.9.0/headroom-v1.9.0-macos-universal.tar.gz"
  sha256 "39eebc10cc5c53fb990920fb29914a52e43eb01d3ec9c6da91034f299eb63264"
  version "1.9.0"
  license "MIT"

  depends_on "ffmpeg"

  def install
    bin.install "headroom"
  end

  def caveats
    <<~EOS
      mp3rgain is now built-in as a library dependency.
      No separate installation required for lossless MP3 gain adjustment.
    EOS
  end

  test do
    assert_match "headroom", shell_output("#{bin}/headroom --version")
  end
end
