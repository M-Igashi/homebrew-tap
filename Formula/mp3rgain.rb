class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v2.7.1/mp3rgain-v2.7.1-macos-universal.tar.gz"
  sha256 "e915b13b268c6e187c80e84128b5bb58286426a16a423fe98d6e6eb6f044537a"
  version "2.7.1"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
