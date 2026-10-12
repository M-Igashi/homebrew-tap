class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v3.11.1/mp3rgain-v3.11.1-macos-universal.tar.gz"
  sha256 "d35c9747cce8758f8acf04cd78b947fec8265f73bdc759fc69bf7ddc9c65d4a5"
  version "3.11.1"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
