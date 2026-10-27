class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v3.14.0/mp3rgain-v3.14.0-macos-universal.tar.gz"
  sha256 "89b4022043de2b6a50019f3e06a954feb2ed9a835b9c4ab996eec413d46c98dc"
  version "3.14.0"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
