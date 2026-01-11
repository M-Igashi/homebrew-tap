class Mp3rgain < Formula
  desc "Lossless MP3 volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v0.4.0/mp3rgain-v0.4.0-macos-universal.tar.gz"
  sha256 "04d36f0aa5d5b2bd748a24fc2f50071192f033067e18f0275e6ebbe026652114"
  version "0.4.0"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
