class Mp3rgain < Formula
  desc "Lossless MP3 volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v0.3.0/mp3rgain-v0.3.0-macos-universal.tar.gz"
  sha256 "ae0c892380be30409e77e3c06ea9ae0c3acf9bcbda73082058aa921e70b1dcc7"
  version "0.3.0"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
