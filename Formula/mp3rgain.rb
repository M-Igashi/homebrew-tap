class Mp3rgain < Formula
  desc "Lossless MP3 volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v0.8.0/mp3rgain-v0.8.0-macos-universal.tar.gz"
  sha256 "42e2903accd6803bf3a161d1b4f4ebddafc1dcbddb3571e27170b7315a630989"
  version "0.8.0"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
