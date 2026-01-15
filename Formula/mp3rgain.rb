class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v1.2.6/mp3rgain-v1.2.6-macos-universal.tar.gz"
  sha256 "c573635f9ed1e9fd02f2dbe1990e98aa4425eec0498989572e463b1c3ad794ee"
  version "1.2.6"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
