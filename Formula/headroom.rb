class Headroom < Formula
  desc "Audio loudness analyzer and gain adjustment tool for mastering and DJ workflows"
  homepage "https://github.com/M-Igashi/headroom"
  url "https://github.com/M-Igashi/headroom/releases/download/v1.7.3/headroom-v1.7.3-macos-universal.tar.gz"
  sha256 "e2120a038a5ce5a27f1a5fd9eda33fead23c50ea0027435764ed207e28b51325"
  version "1.7.3"
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
