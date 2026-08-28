class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v3.4.0/mp3rgain-v3.4.0-macos-universal.tar.gz"
  sha256 "6f08ab7dd68bdee19dfab06e4eea1cb204135dc3232acc7ffa3154b0916f15fe"
  version "3.4.0"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
