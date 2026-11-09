class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v3.16.0/mp3rgain-v3.16.0-macos-universal.tar.gz"
  sha256 "dc995babe9ce09c49980dead697af83adc2bdb0be426209f6b86115018a663b4"
  version "3.16.0"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
