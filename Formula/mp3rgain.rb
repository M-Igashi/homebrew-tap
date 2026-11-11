class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v3.16.2/mp3rgain-v3.16.2-macos-universal.tar.gz"
  sha256 "b070a748fc3783f6ab0fc33f57f71eedcebf5aba932f71ddcf13db02db2197ab"
  version "3.16.2"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
