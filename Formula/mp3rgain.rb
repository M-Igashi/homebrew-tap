class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v0.9.0/mp3rgain-v0.9.0-macos-universal.tar.gz"
  sha256 "065c33d8c03466dbb95045363bbda13341385c405abea0f8cfb21f35d2d4309d"
  version "0.9.0"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
