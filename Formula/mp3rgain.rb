class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v3.13.0/mp3rgain-v3.13.0-macos-universal.tar.gz"
  sha256 "30f2a8944e26011cd3e5d55ed6895d4ec06132bf92c357eb0c8c7288dde82f09"
  version "3.13.0"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
