class Mp3rgain < Formula
  desc "Lossless MP3 volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v0.6.0/mp3rgain-v0.6.0-macos-universal.tar.gz"
  sha256 "e53eac7860b6839b8a3c34022fb4701595c47a758d697f9a18bd1bd418a0c31e"
  version "0.6.0"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
