class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v3.11.0/mp3rgain-v3.11.0-macos-universal.tar.gz"
  sha256 "d03468ff122c8879bfedc40859c5be2f75ae2394228d1f3e42b22c9e7f34754e"
  version "3.11.0"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
