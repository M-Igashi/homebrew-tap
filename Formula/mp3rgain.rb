class Mp3rgain < Formula
  desc "Lossless MP3 volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v0.5.0/mp3rgain-v0.5.0-macos-universal.tar.gz"
  sha256 "9ef2a1aafb721a319365f67c2b42123ce9587fb32fe8896d1f0c09cce6e2e892"
  version "0.5.0"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
