class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v3.9.0/mp3rgain-v3.9.0-macos-universal.tar.gz"
  sha256 "4867ca2430adf6f946ed27419f9cee38e9ce3b662579c8d37168e22d4fbbd7c1"
  version "3.9.0"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
