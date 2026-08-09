class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v3.1.1/mp3rgain-v3.1.1-macos-universal.tar.gz"
  sha256 "967ff1712c6733970f11fa81b570dd135d9f7e2a4d46034d834681a4bbd62579"
  version "3.1.1"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
