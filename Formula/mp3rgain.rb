class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v2.0.3/mp3rgain-v2.0.3-macos-universal.tar.gz"
  sha256 "02e18e27295c11e1f09cc0bd0d2ab1ed6200884a8d660e06c1a0db4cefd24406"
  version "2.0.3"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
