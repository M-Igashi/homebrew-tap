class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v2.9.1/mp3rgain-v2.9.1-macos-universal.tar.gz"
  sha256 "5c2eb1dccfa0363b9e213d19d5716389507f029de400bbc1026d8b60e6512909"
  version "2.9.1"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
