class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v1.3.0/mp3rgain-v1.3.0-macos-universal.tar.gz"
  sha256 "fd0afa160b59392ad8cdf54399e950024539893f934bc0c6a3e412119b7d6000"
  version "1.3.0"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
