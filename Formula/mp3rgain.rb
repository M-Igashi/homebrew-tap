class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v1.2.0/mp3rgain-v1.2.0-macos-universal.tar.gz"
  sha256 "4b99a5897c4b80aa3894603c56b869bab60c0b7603193f0651b90dd04cadbad1"
  version "1.2.0"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
