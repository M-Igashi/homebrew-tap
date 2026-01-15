class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v1.2.7/mp3rgain-v1.2.7-macos-universal.tar.gz"
  sha256 "21c62b5638b1d144a23d55cf38d619bcd138650a5709b1eebefc43e6103c4b61"
  version "1.2.7"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
