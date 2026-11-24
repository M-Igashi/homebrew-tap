class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://mp3rgain.tyna.ninja/"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v3.17.0/mp3rgain-v3.17.0-macos-universal.tar.gz"
  sha256 "45d1beb3f97cb1fe811f7929d761529c0ac858436b4b6d2e776d5059284fc48f"
  version "3.17.0"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
