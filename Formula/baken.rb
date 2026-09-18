class Baken < Formula
  desc "Audio loudness analyzer and gain adjustment tool for mastering and DJ workflows"
  homepage "https://github.com/M-Igashi/baken"
  url "https://github.com/M-Igashi/baken/releases/download/v3.5.0/baken-v3.5.0-macos-universal.tar.gz"
  sha256 "4ddb77dbeaefcb06ae2c8f186e6c39a551c0bc53c8a0b52451cb9c8c1ba011b7"
  version "3.5.0"
  license "MIT"

  depends_on "ffmpeg"

  def install
    bin.install "baken"
  end

  def caveats
    <<~EOS
      mp3rgain is now built-in as a library dependency.
      No separate installation required for lossless MP3 gain adjustment.
    EOS
  end

  test do
    assert_match "baken", shell_output("#{bin}/baken --version")
  end
end
