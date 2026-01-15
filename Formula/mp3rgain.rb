class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v1.2.2/mp3rgain-v1.2.2-macos-universal.tar.gz"
  sha256 "6e496af6db7b5457aa6aee5ae5461464d101e82a54e39af3c32bf52f33808abf"
  version "1.2.2"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
