class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v3.8.1/mp3rgain-v3.8.1-macos-universal.tar.gz"
  sha256 "b17f1656f1f13c81e455020615d7c02674d2c02c80daa194ee888a154143d69d"
  version "3.8.1"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
