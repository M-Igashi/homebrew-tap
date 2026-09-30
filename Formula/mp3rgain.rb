class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v3.9.1/mp3rgain-v3.9.1-macos-universal.tar.gz"
  sha256 "dd2a69c68247dcfd9d5ea37461b3a4852b8d2e772ab9c4d7396dc43d41e5bde3"
  version "3.9.1"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
