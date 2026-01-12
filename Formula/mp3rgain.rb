class Mp3rgain < Formula
  desc "Lossless MP3 volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v0.7.0/mp3rgain-v0.7.0-macos-universal.tar.gz"
  sha256 "032c56f169d08e9a46982f36e92a2941d95540ee0c778f901bc799b42662f266"
  version "0.7.0"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
