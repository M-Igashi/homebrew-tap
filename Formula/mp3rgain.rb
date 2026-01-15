class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v1.2.3/mp3rgain-v1.2.3-macos-universal.tar.gz"
  sha256 "b941361c00f3767def6e6887b04249b01bf2c2af01f1b2bba712e9c6ded0b877"
  version "1.2.3"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
