class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v3.7.0/mp3rgain-v3.7.0-macos-universal.tar.gz"
  sha256 "4a68cf51bffc4466977ddc89457cfa843c23bf86b3675af94d56cfa74581a807"
  version "3.7.0"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
