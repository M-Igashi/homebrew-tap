class Flipdf < Formula
  desc "CLI tool to reverse page order in PDF files"
  homepage "https://github.com/M-Igashi/flipdf"
  url "https://github.com/M-Igashi/flipdf/releases/download/v1.0.3/flipdf-v1.0.3-macos.tar.gz"
  sha256 "c4f97033c5c0ff10ce63e7d7733f0179fd21724567a787bfe82ffc0405357d3c"
  version "1.0.3"
  license "MIT"

  def install
    bin.install "flipdf"
  end

  test do
    assert_match "flipdf", shell_output("#{bin}/flipdf --help")
  end
end
