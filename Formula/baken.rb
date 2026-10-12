class Baken < Formula
  desc "Audio loudness analyzer and gain adjustment tool for mastering and DJ workflows"
  homepage "https://github.com/M-Igashi/baken"
  url "https://github.com/M-Igashi/baken/releases/download/v4.6.0/baken-v4.6.0-macos-universal.tar.gz"
  sha256 "b0d2039640ff2c321c830ea2c9bc5bd19dbe4f76878b51a38557587ce3405e0c"
  version "4.6.0"
  license "MIT"

  depends_on "ffmpeg"

  def install
    bin.install "baken"
    doc.install "LICENSE", "THIRD_PARTY_LICENSES.md"
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
