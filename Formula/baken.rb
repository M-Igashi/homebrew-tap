class Baken < Formula
  desc "Audio loudness analyzer and gain adjustment tool for mastering and DJ workflows"
  homepage "https://github.com/M-Igashi/baken"
  url "https://github.com/M-Igashi/baken/releases/download/v4.15.1/baken-v4.15.1-macos-universal.tar.gz"
  sha256 "171041cd0447c8dbe643cee217a6da0d5f71b26666f2e4682dfbf82f03aa8f91"
  version "4.15.1"
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
