class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v2.9.2/mp3rgain-v2.9.2-macos-universal.tar.gz"
  sha256 "823d4528c7e0eb1788877e03327d4dd52ab942d58ddfe4f84115b899b67f3678"
  version "2.9.2"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
