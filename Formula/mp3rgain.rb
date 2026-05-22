class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v2.7.0/mp3rgain-v2.7.0-macos-universal.tar.gz"
  sha256 "e3006fade5b45fbefc4470b6a975a4f8616f1d0830a016f2cecb3949acd37523"
  version "2.7.0"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
