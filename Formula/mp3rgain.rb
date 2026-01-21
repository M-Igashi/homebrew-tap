class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v1.5.0/mp3rgain-v1.5.0-macos-universal.tar.gz"
  sha256 "21b811fad4d823f05565fa0be9aa9f033c488af517f6f4e45f62bb1252419b84"
  version "1.5.0"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
