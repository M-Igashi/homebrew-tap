class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v2.4.0/mp3rgain-v2.4.0-macos-universal.tar.gz"
  sha256 "e1028babab3bb9d6dd6a6b17101b80407aab1997824470cbf69e9ed81b7d14a4"
  version "2.4.0"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
