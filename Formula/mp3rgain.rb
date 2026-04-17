class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v2.2.1/mp3rgain-v2.2.1-macos-universal.tar.gz"
  sha256 "4847f3ac1299d6a1eff0c4f9df24a3998405bfd5613ea95b5571309fe7236576"
  version "2.2.1"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
