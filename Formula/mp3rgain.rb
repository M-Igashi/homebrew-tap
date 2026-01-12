class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v1.1.0/mp3rgain-v1.1.0-macos-universal.tar.gz"
  sha256 "3fb2ed69bcf69b5984a27bff4fb257e594358800ef5de8aa829f7194b2d95c0a"
  version "1.1.0"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
