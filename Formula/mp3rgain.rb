class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v1.4.0/mp3rgain-v1.4.0-macos-universal.tar.gz"
  sha256 "df58ac368d6bd03c446fa8dc92991702a6282f1b3e66712d52a1d595b801772e"
  version "1.4.0"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
