class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v1.3.2/mp3rgain-v1.3.2-macos-universal.tar.gz"
  sha256 "a9b9794a5cdfd1c7273cb44941f4e4e1cc3a672319e019ea0a9d99b84b532fba"
  version "1.3.2"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
