class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v2.9.3/mp3rgain-v2.9.3-macos-universal.tar.gz"
  sha256 "f49a5d3bffb7e25407d5c94591fe8607ffdc8831ae935ce9ab3430fc5ed20f9f"
  version "2.9.3"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
