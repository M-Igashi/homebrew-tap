class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v2.9.5/mp3rgain-v2.9.5-macos-universal.tar.gz"
  sha256 "872111f4b1e24ad468903676de74e00507cd303d4c6d4f927bef34a6c424b53d"
  version "2.9.5"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
