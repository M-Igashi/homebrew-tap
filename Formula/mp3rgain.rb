class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v2.6.1/mp3rgain-v2.6.1-macos-universal.tar.gz"
  sha256 "99ac7cf180ee8ea1130c6f54ff7c18d1a2022aa85e6a579eab0fb4a0afcd3158"
  version "2.6.1"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
