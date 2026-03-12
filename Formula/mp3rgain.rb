class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v2.0.1/mp3rgain-v2.0.1-macos-universal.tar.gz"
  sha256 "55a02bd00498f5a90fdecabffcb407bbe311e6d0b5bf0677678119a72a12240e"
  version "2.0.1"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
