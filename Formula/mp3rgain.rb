class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v2.2.2/mp3rgain-v2.2.2-macos-universal.tar.gz"
  sha256 "b7182a2dc98f63bd5ce2c77e9e68695e79200ec3911ea27c97d30e6e59d46633"
  version "2.2.2"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
