class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v1.6.0/mp3rgain-v1.6.0-macos-universal.tar.gz"
  sha256 "a011826112215aa627f307b531776cbf07be5c28a00200d7de7e48a5dc81b443"
  version "1.6.0"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
