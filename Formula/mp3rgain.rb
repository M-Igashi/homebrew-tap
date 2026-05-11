class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v2.6.0/mp3rgain-v2.6.0-macos-universal.tar.gz"
  sha256 "6041ebc41b29ed0c2745024f3ea5ea022eb1846340e6b7538a04b78e77998168"
  version "2.6.0"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
