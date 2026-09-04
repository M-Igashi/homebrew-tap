class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v3.6.0/mp3rgain-v3.6.0-macos-universal.tar.gz"
  sha256 "9bf00e64cabd754ec42924b80cc86d93884b4d358f70fca4028c3685c9fcb942"
  version "3.6.0"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
