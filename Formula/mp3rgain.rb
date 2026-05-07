class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v2.5.0/mp3rgain-v2.5.0-macos-universal.tar.gz"
  sha256 "97d1bf17e0e08df9680005a2aab90951c35d88aaad4f1fc2e3069492ba58dbd1"
  version "2.5.0"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
