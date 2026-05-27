class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v2.7.3/mp3rgain-v2.7.3-macos-universal.tar.gz"
  sha256 "f7672472451841fc615d2cea3059e26baaaad4fdf6027d640a14492edbaa729e"
  version "2.7.3"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
