class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v2.0.0/mp3rgain-v2.0.0-macos-universal.tar.gz"
  sha256 "d2f2104ab53168494a079078a1f643a6c38db795fecc7c36b7157c3fe1cde6ce"
  version "2.0.0"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
