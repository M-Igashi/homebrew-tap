class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v3.3.0/mp3rgain-v3.3.0-macos-universal.tar.gz"
  sha256 "ed6e48d1310fa923fac3e3a85a003030ce2bc88f1594290642abf9ca10cfbd53"
  version "3.3.0"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
