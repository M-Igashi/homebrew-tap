class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v1.7.0/mp3rgain-v1.7.0-macos-universal.tar.gz"
  sha256 "f53391138bb1904a4e22b7a9362f33b340a85bd2300de1a08be2bb5d3ccaa1a9"
  version "1.7.0"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
