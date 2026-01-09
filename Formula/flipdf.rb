class Flipdf < Formula
  desc "CLI tool to reverse page order in PDF files"
  homepage "https://github.com/M-Igashi/flipdf"
  url "https://github.com/M-Igashi/flipdf/releases/download/v0.1.1/flipdf-v0.1.1-macos.tar.gz"
  sha256 "2dac47a7e9f4cb78bad5e19c8b7dfee29fccb73753d104b21ab6cb00956c913a"
  version "0.1.1"
  license "MIT"

  def install
    bin.install "flipdf"
  end

  test do
    assert_match "flipdf", shell_output("#{bin}/flipdf --help")
  end
end
