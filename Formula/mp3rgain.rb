class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v1.2.1/mp3rgain-v1.2.1-macos-universal.tar.gz"
  sha256 "4c2c67f10a2bbe012b1c5b49691d93c39566888568a38a402df67a5c1db46f7f"
  version "1.2.1"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
