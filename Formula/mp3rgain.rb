class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v2.1.0/mp3rgain-v2.1.0-macos-universal.tar.gz"
  sha256 "2f80c37e820813c0551f97c750612d152f2180175632a6bee89f56aafbe0989a"
  version "2.1.0"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
