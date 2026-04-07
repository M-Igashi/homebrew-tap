class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v2.1.0/mp3rgain-v2.1.0-macos-universal.tar.gz"
  sha256 "da1e4ee87f2b3efc1e4d12f36aa10f71200de4220205e97a5c6b8b7914e71ab0"
  version "2.1.0"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
