class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v3.10.0/mp3rgain-v3.10.0-macos-universal.tar.gz"
  sha256 "2c9632ae4a1b62e6a2d852bb008868cce65cb23ca5fc92d8923a59d5523b60f3"
  version "3.10.0"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
