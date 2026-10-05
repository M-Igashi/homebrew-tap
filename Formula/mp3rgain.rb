class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v3.9.2/mp3rgain-v3.9.2-macos-universal.tar.gz"
  sha256 "88376344fcdbefb5382910e62077186fb5f2684dc9f2a7ffe9286fc439a37ba9"
  version "3.9.2"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
