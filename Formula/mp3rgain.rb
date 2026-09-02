class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v3.5.0/mp3rgain-v3.5.0-macos-universal.tar.gz"
  sha256 "bc6aace8cab6c1fad45d770c4573c589202703205c707a73f9e93fbf6eeaae65"
  version "3.5.0"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
