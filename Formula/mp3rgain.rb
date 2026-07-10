class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v2.9.6/mp3rgain-v2.9.6-macos-universal.tar.gz"
  sha256 "9cb06c255f2afa77dfbecf923af6f16fc8b8fb9364250273aef02d020bdcb5e0"
  version "2.9.6"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
