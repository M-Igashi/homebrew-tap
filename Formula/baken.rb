class Baken < Formula
  desc "Audio loudness analyzer and gain adjustment tool for mastering and DJ workflows"
  homepage "https://github.com/M-Igashi/baken"
  url "https://github.com/M-Igashi/baken/releases/download/v4.2.1/baken-v4.2.1-macos-universal.tar.gz"
  sha256 "f78129488510156eb0e72f8f1c5034dba831ecb6c478b0565df3cb7a38f01d0c"
  version "4.2.1"
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
