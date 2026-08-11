class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v3.2.0/mp3rgain-v3.2.0-macos-universal.tar.gz"
  sha256 "50ad6eebe1d041c6e8d12e4ef62dda62b5fe2066562f3c8f15d2bfd40b460aed"
  version "3.2.0"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
