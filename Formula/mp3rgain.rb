class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://mp3rgain.tyna.ninja/"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v3.17.1/mp3rgain-v3.17.1-macos-universal.tar.gz"
  sha256 "b235c285de859631659b5081ca64c620bb604a2dd881a545d2bbfa75616c2f92"
  version "3.17.1"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
