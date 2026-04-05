class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v2.0.4/mp3rgain-v2.0.4-macos-universal.tar.gz"
  sha256 "9527f64d9afb1b62b4139da1ff79ec0e83ff66c6a1b7a27ecdbf8c92b2bf404c"
  version "2.0.4"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
