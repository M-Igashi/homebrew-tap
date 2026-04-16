class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v2.2.0/mp3rgain-v2.2.0-macos-universal.tar.gz"
  sha256 "b8aad9977ec95bd8eb9792531f41ab379d49a13674ca59681c6ef0f41843b6b5"
  version "2.2.0"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
