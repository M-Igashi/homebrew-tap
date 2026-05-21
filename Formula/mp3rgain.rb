class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v2.6.3/mp3rgain-v2.6.3-macos-universal.tar.gz"
  sha256 "3657ef0dd21ff0f04ae08a5b3d20c5b4c5725f9c001300eb0c6b48a50fe45c9f"
  version "2.6.3"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
