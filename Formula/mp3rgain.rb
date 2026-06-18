class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v2.8.1/mp3rgain-v2.8.1-macos-universal.tar.gz"
  sha256 "df52e8b9b019bdeb918718f7773967e3d0df4e5990592d2ad121e0cb3de7b1e7"
  version "2.8.1"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
