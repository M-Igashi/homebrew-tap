class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v2.8.0/mp3rgain-v2.8.0-macos-universal.tar.gz"
  sha256 "e5fe53a42089947de080b732df1f50ab66d1c2125c3f1142556a0019abc0f349"
  version "2.8.0"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
