class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://mp3rgain.tyna.ninja/"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v3.17.2/mp3rgain-v3.17.2-macos-universal.tar.gz"
  sha256 "bf3b56967648a35cb3ffa31d8cc7811229aaac97b06bdeadf1bc8d3fd95744e3"
  version "3.17.2"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
