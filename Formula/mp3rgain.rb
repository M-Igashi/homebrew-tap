class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v1.2.5/mp3rgain-v1.2.5-macos-universal.tar.gz"
  sha256 "0746f5f2f92772783ba4ebf14dc41885d104ae8ad904b6784879593f55e8c30f"
  version "1.2.5"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
