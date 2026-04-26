class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v2.3.0/mp3rgain-v2.3.0-macos-universal.tar.gz"
  sha256 "d26e10647a01bec03a46c1d2d643568d074407e30e9a7dbdc017df93150d8ff0"
  version "2.3.0"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
