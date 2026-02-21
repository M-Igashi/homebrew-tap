class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v1.7.0/mp3rgain-v1.7.0-macos-universal.tar.gz"
  sha256 "92554c5411763db1ad72565ab985ff89b6136b088410a43fc1c7e5858d33dfb6"
  version "1.7.0"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
