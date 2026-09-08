class Baken < Formula
  desc "Audio loudness analyzer and gain adjustment tool for mastering and DJ workflows"
  homepage "https://github.com/M-Igashi/baken"
  url "https://github.com/M-Igashi/baken/releases/download/v3.3.1/baken-v3.3.1-macos-universal.tar.gz"
  sha256 "84327e39bb2593c1c23aeea959c1a5b79c5250d468ffcb9fc1fd965b588bb302"
  version "3.3.1"
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
