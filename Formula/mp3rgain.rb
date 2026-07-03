class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v2.9.4/mp3rgain-v2.9.4-macos-universal.tar.gz"
  sha256 "8538c67bf85db270b3e815e63d1c016c053477c0746a5309c312638a5656afd3"
  version "2.9.4"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
