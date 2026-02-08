class Flipdf < Formula
  desc "CLI tool to reverse page order in PDF files"
  homepage "https://github.com/M-Igashi/flipdf"
  url "https://github.com/M-Igashi/flipdf/releases/download/v1.0.1/flipdf-v1.0.1-macos.tar.gz"
  sha256 "fd055d1348fc2ff0c0c910655e6d409357582996f71c55b387755dec910a53c7"
  version "1.0.1"
  license "MIT"

  def install
    bin.install "flipdf"
  end

  test do
    assert_match "flipdf", shell_output("#{bin}/flipdf --help")
  end
end
