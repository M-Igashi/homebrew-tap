class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v2.6.2/mp3rgain-v2.6.2-macos-universal.tar.gz"
  sha256 "5826419803ff1c752e3d1ac2adf58034ce0b0ddf3705cf835e616107b0893284"
  version "2.6.2"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
