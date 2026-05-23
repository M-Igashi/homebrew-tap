class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v2.7.2/mp3rgain-v2.7.2-macos-universal.tar.gz"
  sha256 "6d0313daece0b9688ee9a6fd527205d75822dbef3142baeb4ca1d73f57b10987"
  version "2.7.2"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
