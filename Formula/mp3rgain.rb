class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v1.0.0/mp3rgain-v1.0.0-macos-universal.tar.gz"
  sha256 "ebabd6f099582a9d6d0a1aae9caac3b9ce295bf62db1afa0fb8d1a0b4b12772d"
  version "1.0.0"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
