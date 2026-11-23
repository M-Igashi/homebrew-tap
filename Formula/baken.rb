class Baken < Formula
  desc "Audio loudness analyzer and gain adjustment tool for mastering and DJ workflows"
  homepage "https://github.com/M-Igashi/baken"
  url "https://github.com/M-Igashi/baken/releases/download/v4.15.0/baken-v4.15.0-macos-universal.tar.gz"
  sha256 "fc4963cb2147611caa4910f6d06e4186d5ad000d6af36bcca8b2dec82b2996aa"
  version "4.15.0"
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
