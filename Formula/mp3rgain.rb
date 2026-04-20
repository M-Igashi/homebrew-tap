class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v2.2.3/mp3rgain-v2.2.3-macos-universal.tar.gz"
  sha256 "9c6b89bf0c46f1ca0f55bd9f507027105e07e2593588fcbd4bfc4d2d7abd10b7"
  version "2.2.3"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
