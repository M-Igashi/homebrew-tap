class Flipdf < Formula
  desc "CLI tool to reverse page order in PDF files"
  homepage "https://github.com/M-Igashi/flipdf"
  url "https://github.com/M-Igashi/flipdf/releases/download/v1.0.2/flipdf-v1.0.2-macos.tar.gz"
  sha256 "4e51a990695e8cd1df23b560e925ea2c9e04e916755a89e8bdb4849372e0ff44"
  version "1.0.2"
  license "MIT"

  def install
    bin.install "flipdf"
  end

  test do
    assert_match "flipdf", shell_output("#{bin}/flipdf --help")
  end
end
