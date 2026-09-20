class Baken < Formula
  desc "Audio loudness analyzer and gain adjustment tool for mastering and DJ workflows"
  homepage "https://github.com/M-Igashi/baken"
  url "https://github.com/M-Igashi/baken/releases/download/v3.7.0/baken-v3.7.0-macos-universal.tar.gz"
  sha256 "80dee24816599ce152b31c880d430e2e54cfcc0b1f4f2c5c41c8ece2354ff9ff"
  version "3.7.0"
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
