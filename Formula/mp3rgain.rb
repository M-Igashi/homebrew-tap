class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v3.15.0/mp3rgain-v3.15.0-macos-universal.tar.gz"
  sha256 "21020a1b965a7c8fdb5b7d999355eb946e3aa68fa90bb6dd3711e2781e4373c1"
  version "3.15.0"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
