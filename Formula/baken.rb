class Baken < Formula
  desc "Audio loudness analyzer and gain adjustment tool for mastering and DJ workflows"
  homepage "https://github.com/M-Igashi/baken"
  url "https://github.com/M-Igashi/baken/releases/download/v4.0.2/baken-v4.0.2-macos-universal.tar.gz"
  sha256 "4cb6319a5b7e9ded54334302f53ce25b580d63765ae9ecf139dbc7dfe3f80b36"
  version "4.0.2"
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
