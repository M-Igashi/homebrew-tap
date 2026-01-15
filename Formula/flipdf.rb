class Flipdf < Formula
  desc "CLI tool to reverse page order in PDF files"
  homepage "https://github.com/M-Igashi/flipdf"
  url "https://github.com/M-Igashi/flipdf/releases/download/v0.1.1/flipdf-v0.1.1-macos.tar.gz"
  sha256 "ee8060aa7dc115b73916efeeefb059563f3d2436c750680ae52afb2ed907bdfd"
  version "0.1.1"
  license "MIT"

  def install
    bin.install "flipdf"
  end

  test do
    assert_match "flipdf", shell_output("#{bin}/flipdf --help")
  end
end
