class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v2.3.1/mp3rgain-v2.3.1-macos-universal.tar.gz"
  sha256 "a8b2ff9734cab2e2bd8dd7c8a1142fb1d4e68f30b81590b31268f91e26255325"
  version "2.3.1"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
