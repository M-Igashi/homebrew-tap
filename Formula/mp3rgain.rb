class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v2.11.0/mp3rgain-v2.11.0-macos-universal.tar.gz"
  sha256 "e15c8123cfa07766310232eb9423d0c19ed7e5193a259e9147035060225146b7"
  version "2.11.0"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
