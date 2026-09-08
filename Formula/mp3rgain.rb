class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v3.6.1/mp3rgain-v3.6.1-macos-universal.tar.gz"
  sha256 "ad82e319f9d003ea8028cc15d365d3c87373e1e97199113a6fcfde58be39b966"
  version "3.6.1"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
