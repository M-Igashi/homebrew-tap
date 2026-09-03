class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v3.5.1/mp3rgain-v3.5.1-macos-universal.tar.gz"
  sha256 "0bfe2bf41d776deb76c693f30a8be2a62aef89a8f15b81a6c639903a1191f6c7"
  version "3.5.1"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
