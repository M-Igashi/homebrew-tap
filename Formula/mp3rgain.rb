class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v3.16.1/mp3rgain-v3.16.1-macos-universal.tar.gz"
  sha256 "39a5cc7d6afc77dbc4a34af10ac4aba51e358e834c9ceee4687db05bbf1f2cc4"
  version "3.16.1"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
