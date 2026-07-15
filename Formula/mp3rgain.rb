class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v2.10.0/mp3rgain-v2.10.0-macos-universal.tar.gz"
  sha256 "dafcdd5e2c2ab81de948650443db047af304ae6a4d9b35414802cb2e0240fe27"
  version "2.10.0"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
