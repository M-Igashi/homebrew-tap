class Flipdf < Formula
  desc "CLI tool to reverse page order in PDF files"
  homepage "https://github.com/M-Igashi/flipdf"
  url "https://github.com/M-Igashi/flipdf/releases/download/v0.1.2/flipdf-v0.1.2-macos.tar.gz"
  sha256 "55bce84868b22be600a77e7634264e29d7588077c5948625df6468799f10fc49"
  version "0.1.2"
  license "MIT"

  def install
    bin.install "flipdf"
  end

  test do
    assert_match "flipdf", shell_output("#{bin}/flipdf --help")
  end
end
