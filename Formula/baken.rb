class Baken < Formula
  desc "Audio loudness analyzer and gain adjustment tool for mastering and DJ workflows"
  homepage "https://github.com/M-Igashi/baken"
  url "https://github.com/M-Igashi/baken/releases/download/v4.5.0/baken-v4.5.0-macos-universal.tar.gz"
  sha256 "caa3cf392709b21ecfef49d36472ea09489c4f596d43560af4806d738568258d"
  version "4.5.0"
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
