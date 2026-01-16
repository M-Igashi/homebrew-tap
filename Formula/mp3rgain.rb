class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v1.3.1/mp3rgain-v1.3.1-macos-universal.tar.gz"
  sha256 "b728e7627155f56b8106615e7bb2f71bb944b7cf0474ff72658dac3e68af8b38"
  version "1.3.1"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
