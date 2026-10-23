class Mp3rgain < Formula
  desc "Lossless MP3/M4A volume adjustment - a modern mp3gain replacement written in Rust"
  homepage "https://github.com/M-Igashi/mp3rgain"
  url "https://github.com/M-Igashi/mp3rgain/releases/download/v3.12.1/mp3rgain-v3.12.1-macos-universal.tar.gz"
  sha256 "008f96cb8240c4b355b514cec5573d75a96789f05b14a85efe50aca54f29221a"
  version "3.12.1"
  license "MIT"

  def install
    bin.install "mp3rgain"
  end

  test do
    assert_match "mp3rgain", shell_output("#{bin}/mp3rgain -v")
  end
end
