class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v1.3.1/mp3rgain-v1.3.1-macos-universal.tar.gz"
  sha256 "2915639dc4af2775703c2d8d9147fd2df1c6ec801b0681fdcf476ed7537cd7a7"
  version "1.3.1"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
