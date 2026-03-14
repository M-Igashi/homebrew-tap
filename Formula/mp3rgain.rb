class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v2.0.2/mp3rgain-v2.0.2-macos-universal.tar.gz"
  sha256 "e0eee56ff46de009ce646ca90015b42bd0b09b77edc3f836637bea592395f7e1"
  version "2.0.2"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
