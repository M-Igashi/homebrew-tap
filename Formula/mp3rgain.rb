class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v2.9.0/mp3rgain-v2.9.0-macos-universal.tar.gz"
  sha256 "4ee16d672129c3b594e25c4b203befd1834195723721cbe26f975ee65642a403"
  version "2.9.0"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
