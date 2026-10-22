class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v3.12.0/mp3rgain-v3.12.0-macos-universal.tar.gz"
  sha256 "7b094ec6308587d273582bff361ced6c20591075092ff82e34b2fd69f7f1b29f"
  version "3.12.0"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
