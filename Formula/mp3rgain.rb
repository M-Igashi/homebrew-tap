class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v3.0.0/mp3rgain-v3.0.0-macos-universal.tar.gz"
  sha256 "2e68a5b075922ce4b7ef8024b61d2a4070252b5ded61adae424d348f9d80bd1d"
  version "3.0.0"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
