class Mp3rgain < Formula
  desc "Lossless MP3 volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v0.1.0/mp3rgain-v0.1.0-macos-universal.tar.gz"
  sha256 "00278d344c5a8d51c8812e8f473f83267e615c43b0239598060fcb2a8d0e591e"
  version "0.1.0"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain --version")
  end
end
