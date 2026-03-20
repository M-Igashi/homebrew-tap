class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v2.0.3/mp3rgain-v2.0.3-macos-universal.tar.gz"
  sha256 "ba6a480adf9903db6ae494c5717fb3da62d704534bbbe3fa35f08c7435577ca8"
  version "2.0.3"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
